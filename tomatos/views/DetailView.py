from django.views import generic
from tomatos.models.Tomato import Tomato

class DetailView( generic.DetailView ):
    
    ## template to use
    template_name = 'tomatos/detail.html'

    ## model object to use
    model = Tomato
