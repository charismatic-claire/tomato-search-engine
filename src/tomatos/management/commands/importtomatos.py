from django.core.management.base import BaseCommand
from tomatos.helpers.TomatoImporter import TomatoImporter

class Command( BaseCommand ):
    
    def add_arguments(self, parser):
        parser.add_argument( 'input_file' )

    def handle(self, *args, **options):
        ## initialize
        input_file = options['input_file']
        tomato_importer = TomatoImporter()
        
        ## read from file
        tomato_importer.read_tomatos_from_file( input_file )
        
        ## flush database
        tomato_importer.flush_models_from_database()
        
        ## add colors to database
        tomato_importer.import_tomato_colors()
        
        ## add types to database
        tomato_importer.import_tomato_types()

        ## add tomatos to database
        tomato_importer.import_tomatos()