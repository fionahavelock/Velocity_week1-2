inputa = int(input("Please enter a number: "))
inputb = int(input("Please enter a number: "))
inputc = int(input("Please enter a number: "))

if inputa > inputb:
    if inputa > inputc:
        print (inputa)
    else:
        print(inputc)
else: 
    if inputb > inputc:
        print(inputb)
    else:
        print(inputc)
        