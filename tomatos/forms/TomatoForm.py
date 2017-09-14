from django import forms
from tomatos.helpers.ChoiceGenerator import ChoiceGenerator
from tomatos.models.TomatoColor import TomatoColor
from tomatos.models.TomatoType import TomatoType
from django.forms.widgets import CheckboxSelectMultiple

class TomatoForm( forms.Form ):
    
    search_query = forms.CharField( label='Suchfeld', max_length=200, required=False )
    
    tomato_colors = forms.MultipleChoiceField( label='Farben', widget=CheckboxSelectMultiple, choices=ChoiceGenerator.generate_choices( TomatoColor.objects.order_by('name') ) )
    
    tomato_types = forms.MultipleChoiceField( label='Typen', widget=CheckboxSelectMultiple, choices=ChoiceGenerator.generate_choices( TomatoType.objects.order_by('name') ) )
