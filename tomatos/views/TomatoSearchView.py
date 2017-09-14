from django.views.generic.edit import FormView
from tomatos.forms.TomatoForm import TomatoForm
from tomatos.models.TomatoColor import TomatoColor
from tomatos.models.TomatoType import TomatoType
from tomatos.models.Tomato import Tomato
from django.db.models import Q

class TomatoSearchView( FormView ):
    
    template_name = 'tomatos/tomato_search.html'
    
    form_class = TomatoForm
    
    def form_valid( self, form ):
        return super( TomatoSearchView, self ).form_valid( form )
    
    def add_query_to_context( self, context ):
        
        ## add search query
        self.search_query = ''
        try:
            self.search_query = self.request.GET.get('search_query')
            context['search_query'] = self.search_query
        except:
            pass
        
        ## add tomato colors
        self.tomato_colors = []
        try:
            tomato_color_ids = self.request.GET.getlist('tomato_colors') 
            for tomato_color_id in tomato_color_ids:
                self.tomato_colors.append( TomatoColor.objects.get( id=tomato_color_id ) )
            context['tomato_colors'] = self.tomato_colors
        except:
            pass
        
        ## add tomato types
        self.tomato_types = []
        try:
            tomato_type_ids= self.request.GET.getlist('tomato_types')
            for tomato_type_id in tomato_type_ids:
                self.tomato_types.append( TomatoType.objects.get( id=tomato_type_id ) )
            context['tomato_types'] = self.tomato_types
        except:
            pass
        
        ## return result
        return context
    
    def add_tomato_list_to_context( self, context ):
        ## initialize
        tomato_list = Tomato.objects.order_by('name')
        ## use text filter
        if self.search_query:
            tomato_list = tomato_list.filter( Q(description__icontains = self.search_query) | Q(name__icontains = self.search_query) )
        ## use color filter
        if self.tomato_colors:
            tomato_list = tomato_list.filter( colors__in = self.tomato_colors )
        ## use type filter
        if self.tomato_types:
            tomato_list = tomato_list.filter( types__in = self.tomato_types )
        ## remove duplicates
        tomato_list = list( set( tomato_list ) )
        ## add to context
        context['tomato_list'] = tomato_list
        ## return result
        return context

    def get_context_data( self, **kwargs):
        ## get context
        context = super( TomatoSearchView, self ).get_context_data( **kwargs )
        ## add query to context
        context = self.add_query_to_context( context )
        ## add tomato list to context
        context = self.add_tomato_list_to_context( context )
        ## return result
        return context
