from django.contrib import admin
from src.tomatos.models.Tomato import Tomato
from src.tomatos.models.TomatoColor import TomatoColor
from src.tomatos.models.TomatoType import TomatoType

## Models the admin can edit
admin.site.register( Tomato )
admin.site.register( TomatoColor )
admin.site.register( TomatoType )