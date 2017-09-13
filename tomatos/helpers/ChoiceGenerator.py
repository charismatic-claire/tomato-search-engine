
class ChoiceGenerator( object ):

    @staticmethod    
    def generate_choices( item_list ):
        ## generate choices list
        choices = []
        for item in item_list:
            choice = [ item.id, item.name ]
            choices.append( choice )
        ## return result
        return choices
    