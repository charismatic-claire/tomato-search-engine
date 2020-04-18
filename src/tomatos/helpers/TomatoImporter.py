import json
from src.tomatos.models.Tomato import Tomato
from src.tomatos.models.TomatoColor import TomatoColor
from src.tomatos.models.TomatoType import TomatoType

class TomatoImporter(object):

    def read_tomatos_from_file( self, input_file  ):
        ## read from file
        with open( input_file, mode='r', encoding='utf-8' ) as tomato_file:
            self.tomato_list = json.load( tomato_file )

    def flush_models_from_database( self ):
        ## delete tomatos
        tomatos = Tomato.objects.all()
        tomatos.delete()
        ## delete tomato colors
        tomato_colors = TomatoColor.objects.all()
        tomato_colors.delete()
        ## delete tomato types
        tomato_types= TomatoType.objects.all()
        tomato_types.delete()
        
    def find_all_category_values( self, category ):
        values = set()
        for item in self.tomato_list:
            try:
                for value in item[ category ]:
                    values.add( value )
            except KeyError:
                pass
        return list( values )
            
    def import_tomato_colors( self ):
        tomato_colors = self.find_all_category_values( 'colors' )
        for tomato_color in tomato_colors:
            tc = TomatoColor( name=tomato_color )
            tc.save()
            
    def import_tomato_types( self ):
        tomato_types = self.find_all_category_values( 'types' )
        for tomato_type in tomato_types:
            tt = TomatoType( name=tomato_type )
            tt.save()
            
    def import_tomatos( self ):
        for tomato in self.tomato_list:
            t = Tomato( name=tomato['name'], description=tomato['description'] )
            t.save()
            try:
                t.image = tomato['image']
                t.save()
            except KeyError:
                pass
            try:
                for tomato_color in tomato['colors']:
                    t.colors.add( TomatoColor.objects.filter( name=tomato_color )[0] )
            except KeyError:
                pass
            try:
                for tomato_type in tomato['types']:
                    t.types.add( TomatoType.objects.filter( name=tomato_type )[0] )
            except KeyError:
                pass
            