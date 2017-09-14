from tomatos.views.BaseView import BaseView

class IndexView( BaseView ):
    """
    View to show the index page.
    """
    
    ## Template to use
    template_name = 'tomatos/index.html'
        