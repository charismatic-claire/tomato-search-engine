from django.db import models

class TomatoColor( models.Model ):
    
    name = models.CharField( max_length=200 )
    
    def get_number_of_tomatos( self ):
        return len( self.tomato_set.all() )
    
    def __str__( self ):
        return self.name