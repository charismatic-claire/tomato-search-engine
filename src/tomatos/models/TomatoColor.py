from django.db import models

class TomatoColor( models.Model ):
    """
    Minor type of this application, a tomato color
    """
    
    ## name of the color
    name = models.CharField( max_length=200 )
    
    def get_number_of_tomatos( self ):
        """
        How many tomatos do have this color?
        """
        return len( self.tomato_set.all() )
    
    def __str__( self ):
        """
        Print the name
        """
        return self.name