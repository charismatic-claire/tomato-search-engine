from django import forms
from tomatos.helpers.ChoiceGenerator import ChoiceGenerator
from tomatos.models.TomatoColor import TomatoColor
from tomatos.models.TomatoType import TomatoType

class TomatoForm( forms.Form ):
    
    search_query = forms.CharField( label='Suchfeld', max_length=200, required=False )
    
    tomato_color = forms.ChoiceField( choices=ChoiceGenerator.generate_choices( TomatoColor.objects.order_by('name') ) )
    
    tomato_type = forms.ChoiceField( choices=ChoiceGenerator.generate_choices( TomatoType.objects.order_by('name') ) )
