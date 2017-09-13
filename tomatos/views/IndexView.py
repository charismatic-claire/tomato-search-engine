from django.views import generic
from tomatos.models.Tomato import Tomato
from tomatos.models.TomatoColor import TomatoColor
from tomatos.models.TomatoType import TomatoType

class IndexView( generic.ListView ):
    
    ## template to use
    template_name = 'tomatos/index.html'
    
    ## context name used in 'index.html' template 
    context_object_name = 'tomato_context'
    
    ## generate tomato list
    def get_tomato_list( self ):
        return Tomato.objects.order_by( 'name' )
    
    ## generate tomato color list
    def get_tomatocolor_list( self ):
        return TomatoColor.objects.order_by( 'name' )
    
    ## generate tomato type list
    def get_tomatotype_list( self ):
        return TomatoType.objects.order_by( 'name' )
    
    ## generate 'tomatos_list'
    def get_queryset( self ):
        ## init
        tomato_context = {}
        ## add lists
        tomato_context['tomato_list'] = self.get_tomato_list()
        tomato_context['tomatocolor_list'] = self.get_tomatocolor_list()
        tomato_context['tomatotype_list'] = self.get_tomatotype_list()
        ## return
        return tomato_context
    