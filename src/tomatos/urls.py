from django.conf.urls import url
from tomatos import views

## name of app
app_name = 'tomatos'

## url patterns
urlpatterns = [
    
    ## index page, list of tomatos
    url( r'^$', views.IndexView.as_view() , name='index' ),
    
    ## detail page of one specific tomato
    url( r'^(?P<pk>[0-9]+)/$', views.DetailView.as_view(), name='detail' ),
    
]
