from django.views import generic
from tomatos.models.Tomato import Tomato
from tomatos.models.TomatoType import TomatoType
from django.shortcuts import get_object_or_404

class TypeView( generic.ListView ):
    
        ## template to use
    template_name = 'tomatos/type.html'
    
    ## context name used in 'index.html' template 
    context_object_name = 'tomatos_by_type'
    
    ## generate 'tomatos_by_type'
    def get_queryset( self ):
        self.tomato_type = get_object_or_404( TomatoType, name=str(self.args[0]).capitalize() )
        return Tomato.objects.filter( types=self.tomato_type ).order_by( 'name' )
        
    ## tomato type in context
    def get_context_data(self, **kwargs):
        ## call the base implementation first to get a context
        context = super( TypeView, self ).get_context_data( **kwargs )
        ## add tomato type
        context['tomato_type'] = self.tomato_type
        ## return result
        return context