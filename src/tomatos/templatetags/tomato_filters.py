from django import template

register = template.Library()

@register.filter( name='addcss' )
def addcss( field, css ):
    """
    Add extra CSS classes to template elements
    """
    return field.as_widget( attrs={ "class":css } )