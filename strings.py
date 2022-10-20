def playWithString ():
    fact = input("Tell me a fact: ")
    factString = "You say: " + fact
    append = "\nComputer says: That is very interesting"
    sentence = factString + append

    return print(sentence)


playWithString()