from django.contrib import admin
from tomatos.models.Tomato import Tomato
from tomatos.models.TomatoColor import TomatoColor
from tomatos.models.TomatoType import TomatoType

## Models the admin can edit
admin.site.register( Tomato )
admin.site.register( TomatoColor )
admin.site.register( TomatoType )