from django.db import models
from tomatos.models.TomatoType import TomatoType
from tomatos.models.TomatoColor import TomatoColor

class Tomato( models.Model ):
    """
    The major content type of this application, the tomato
    """
    
    ## name of the plant
    name = models.CharField( max_length=200 )
    
    ## description of the plant
    description = models.TextField()
    
    ## picture of the fruits, mostly
    image = models.ImageField( upload_to='images/', blank=True, null=True )
    
    ## generated type
    types = models.ManyToManyField( TomatoType, blank=True )

    ## generated color
    colors = models.ManyToManyField( TomatoColor, blank=True )
    
    def __str__(self):
        """
        Only print the name
        """
        return self.name
