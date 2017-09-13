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
    
    ## tomatos by type
    url( r'^type/([\w-]+)/$', views.TypeView.as_view(), name='type' ),
    
    ## tomato form
    url( r'^tomato-search/$', views.TomatoSearchView.as_view(), name='tomato_search' ),
    
]
