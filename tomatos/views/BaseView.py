from django.views.generic.edit import FormView
from django.db.models import Q
from tomatos.forms.TomatoForm import TomatoForm
from tomatos.models.TomatoColor import TomatoColor
from tomatos.models.TomatoType import TomatoType
from tomatos.models.Tomato import Tomato

class BaseView( FormView ):
    """
    Basic view class, contains all the logic. IndexView and DetailView use it. 
    """

    ## Form class, used to generate the form    
    form_class = TomatoForm
    
    ## Template to use
    template_name = None
    
    ## Where to go from here?
    success_url = '/'
    
    def get_search_query( self ):
        """
        Get SEARCH QUERY from request
        """
        search_query = ''
        try:
            search_query = self.request.GET.get('search_query')
        except:
            pass
        return search_query
        
    def get_tomato_colors( self ):
        """
        Get TOMATO COLORS from request
        """
        tomato_colors = []
        try:
            tomato_color_ids = self.request.GET.getlist('tomato_colors') 
            for tomato_color_id in tomato_color_ids:
                tomato_colors.append( TomatoColor.objects.get( id=tomato_color_id ) )
        except:
            pass
        return tomato_colors
        
    def get_tomato_types( self ):
        """
        Get TOMATO TYPES from request
        """
        tomato_types = []
        try:
            tomato_type_ids= self.request.GET.getlist('tomato_types')
            for tomato_type_id in tomato_type_ids:
                tomato_types.append( TomatoType.objects.get( id=tomato_type_id ) )
        except:
            pass
        return tomato_types        
    
    def generate_response_to_query( self ):
        """
        Apply the logic, generate respons to request
        """
        ## initialize
        search_query = self.get_search_query()
        tomato_colors = self.get_tomato_colors()
        tomato_types = self.get_tomato_types()
        tomato_list = Tomato.objects.order_by('name')
        ## apply filters
        if search_query:
            tomato_list = tomato_list.filter( Q(description__icontains = search_query) | Q(name__icontains = search_query) )
        if tomato_colors:
            tomato_list = tomato_list.filter( colors__in = tomato_colors )
        if tomato_types:
            tomato_list = tomato_list.filter( types__in = tomato_types )
        ## return result
        return list( set( tomato_list ) )        
    
    def get_context_data( self, **kwargs):
        """
        Overriden method to apply my business logic
        """
        ## get context
        context = super( BaseView, self ).get_context_data( **kwargs )
        ## add response to context, name it 'tomato_list'
        context['tomato_list'] = self.generate_response_to_query()
        ## return result
        return context
