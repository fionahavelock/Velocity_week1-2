"""
In a new python file:
    Initialise a new 'books' dictionary, with author names as keys and lists of book titles as values.
    Write a program which asks the user for an author name and prints, 
    as a string, the list of books by that author (hint: remember the join() method).
    Stretch goal: Display the list of books in alphabetical order
    
    -Containers for data:
        - List
        - array
        - Stack 
        - Queue
    These can all be built using arrays, several data types can be stored in each of these containers. These containers
    can grow dynamically. However, an array has a fixed length. A dictionary is a key value storage container. Queue and Stack differ
    as they only allow you to access objects in a pre defined order. (Queue - first in first out, for example when removing somthing it 
    always takes out the last item) (Stack - first in last out ) Sometimes this can be be beneficial as we dont have to include any extra logic.  
"""




#using update to update the dictionary
def GetUserDictionary():
    #create har coded dictionary 
    LibraryDictionary = {'Shelley': 'Frankenstein', 
                        'Keats': 'La Belle Dame Sans Merci', 
                            'Goethe': 'Faust', 
                                'Virgil': 'Aeneid'}
    Author = input("Enter author name: ")
    Title = input("Enter book title: ")
    userInput = {Author : Title}
    LibraryDictionary.update(userInput)
    return print (LibraryDictionary)


def GetUserList():
    #create har coded dictionary 
    LibraryDictionary = {'Shelley': 'Frankenstein', 
                        'Keats': 'La Belle Dame Sans Merci', 
                            'Goethe': 'Faust', 
                                'Virgil': 'Aeneid'}
    LibraryDictToList = list(LibraryDictionary.items())
    #print(LibraryDictToList)
    Author = input("Enter author name: ")
    Title = input("Enter book title: ")
    userInput = {Author : Title}
    userInputToList = list(userInput.items())
    Library = LibraryDictToList + userInputToList #can also use append
    for ele in Library:
        OrderedLibrary = sorted(Library)
    return print (OrderedLibrary)




#GetUserDictionary()
#GetUserList()