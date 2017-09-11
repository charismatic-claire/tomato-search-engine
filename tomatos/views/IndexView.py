from django.views import generic
from tomatos.models.Tomato import Tomato

class IndexView( generic.ListView ):
    
    ## template to use
    template_name = 'tomatos/index.html'
    
    ## context name used in 'index.html' template 
    context_object_name = 'tomatos_list'
    
    ## generate 'tomatos_list'
    def get_queryset( self ):
        return Tomato.objects.order_by( 'name' )[:5]
    