from django.views.generic.edit import FormView
from django.db.models import Q
from tomatos.forms.TomatoForm import TomatoForm
from tomatos.models.TomatoColor import TomatoColor
from tomatos.models.TomatoType import TomatoType
from tomatos.models.Tomato import Tomato
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage

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
    
    def get_page_number( self ):
        """
        Get the PAGE NUMBER from request 
        """
        page_number = ''
        try:
            page_number = self.request.GET.get('page')
        except:
            pass
        return page_number
    
    def paginate_tomato_list( self, tomato_list ):
        """
        Paginate the tomato list
        """
        ## initialize
        page_number = self.get_page_number()
        paginator = Paginator( tomato_list, 30 )
        ## paginate
        try:
            result = paginator.page( page_number )
        except PageNotAnInteger:
            result = paginator.page( 1 )
        except EmptyPage:
            result = paginator.page( paginator.num_pages )            
        ## return result
        return result
    
    def generate_response_to_query( self ):
        """
        Apply the logic, generate respons to request
        """
        ## initialize
        search_query = self.get_search_query()
        tomato_colors = self.get_tomato_colors()
        tomato_types = self.get_tomato_types()
        tomato_list = Tomato.objects.order_by( 'name' )
        ## apply filters
        if search_query:
            tomato_list = tomato_list.filter( Q(description__icontains = search_query) | Q(name__icontains = search_query) )
        if tomato_colors:
            tomato_list = tomato_list.filter( colors__in = tomato_colors )
        if tomato_types:
            tomato_list = tomato_list.filter( types__in = tomato_types )
        ## remove duplicates, sort alphabetically
        tomato_list = tomato_list.distinct().order_by( 'name' )
        ## paginate
        tomato_list_paginated = self.paginate_tomato_list( tomato_list )
        ## return result
        return { "list": tomato_list_paginated, "length": len(tomato_list) }   
    
    def get_parameters( self ):
        """
        Get copy of all request parameters
        """
        get_copy = self.request.GET.copy()
        parameters = get_copy.pop('page', True) and get_copy.urlencode()
        return parameters
        
    def get_context_data( self, **kwargs):
        """
        Overriden method to apply my business logic
        """
        ## get context
        context = super( BaseView, self ).get_context_data( **kwargs )
        ## add information to context
        tomato_response = self.generate_response_to_query()
        context['tomato_list'] = tomato_response[ 'list' ]
        context['tomato_length'] = tomato_response[ 'length' ]
        context['parameters'] = self.get_parameters()
        ## return result
        return context
