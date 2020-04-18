from django import forms
from tomatos.helpers.ChoiceGenerator import ChoiceGenerator
from tomatos.models.TomatoColor import TomatoColor
from tomatos.models.TomatoType import TomatoType
from django.forms.widgets import CheckboxSelectMultiple

class TomatoForm( forms.Form ):
    """
    Class to represent the search form
    """
    
    ## for plain text search
    search_query = forms.CharField( label='SEARCH QUERY', max_length=200, required=False )
    
    ## filter by color
    tomato_colors = forms.MultipleChoiceField( label='TOMATO COLORS', widget=CheckboxSelectMultiple, choices=ChoiceGenerator.generate_choices( TomatoColor.objects.order_by('name') ) )
    
    ## filter by type
    tomato_types = forms.MultipleChoiceField( label='TOMATO TYPES', widget=CheckboxSelectMultiple, choices=ChoiceGenerator.generate_choices( TomatoType.objects.order_by('name') ) )
