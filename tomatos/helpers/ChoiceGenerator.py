
class ChoiceGenerator( object ):
    """
    Helper class to generate choices needed by the search form
    """

    @staticmethod    
    def generate_choices( item_list ):
        """
        Generate list of color or type choices
        """
        ## generate choices list
        choices = []
        for item in item_list:
            choice = [ item.id, item.name + ' (' + str(item.get_number_of_tomatos()) + ')' ]
            choices.append( choice )
        ## return result
        return choices
    