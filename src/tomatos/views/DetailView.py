from src.tomatos.models.Tomato import Tomato
from django.views.generic.detail import DetailView
from src.tomatos.views.BaseView import BaseView

class DetailView( DetailView, BaseView ):
    """
    View to show details of one specific tomato. By the way:
    Wow, a class can be a subclass of multiple superclasses.
    """
    
    ## Template to use
    template_name = 'tomatos/detail.html'

    ## Objects from which maodel to fetch
    model = Tomato
    