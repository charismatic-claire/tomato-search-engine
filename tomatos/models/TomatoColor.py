from django.db import models

class TomatoColor( models.Model ):
    
    name = models.CharField( max_length=200 )
    
    def __str__( self ):
        return self.name