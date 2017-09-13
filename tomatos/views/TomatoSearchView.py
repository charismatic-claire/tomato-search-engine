from django.views.generic.edit import FormView
from tomatos.forms.TomatoForm import TomatoForm
from tomatos.models.TomatoColor import TomatoColor
from tomatos.models.TomatoType import TomatoType
from tomatos.models.Tomato import Tomato

class TomatoSearchView( FormView ):
    
    template_name = 'tomatos/tomato_search.html'
    
    form_class = TomatoForm
    
    def form_valid( self, form ):
        return super( TomatoSearchView, self ).form_valid( form )
    
    def add_query_to_context( self, context ):
        try:
            context['search_query'] = self.request.GET.get('search_query')
        except:
            pass
        try:
            context['tomato_color'] = TomatoColor.objects.get( id=self.request.GET.get('tomato_color') )
        except:
            pass
        try:
            context['tomato_type'] = TomatoType.objects.get( id=self.request.GET.get('tomato_type') )
        except:
            pass
        return context
    
    def add_tomato_list_to_context( self, context ):
        try:
            tomato_list = Tomato.objects.filter( colors=context['tomato_color'] ).filter( types=context['tomato_type'] )
            context['tomato_list'] = tomato_list
        except:
            pass
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
