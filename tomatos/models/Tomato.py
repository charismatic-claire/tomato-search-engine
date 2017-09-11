from django.db import models
from tomatos.models.TomatoType import TomatoType
from tomatos.models.TomatoColor import TomatoColor

class Tomato( models.Model ):
    
    name = models.CharField( max_length=200 )
    
    description = models.TextField()
    
    image = models.ImageField( upload_to='images/', blank=True, null=True )
    
    types = models.ManyToManyField( TomatoType, blank=True )

    colors = models.ManyToManyField( TomatoColor, blank=True )
    
    def __str__(self):
        return self.name
