def getSubjectScores():
    print("please enter a score for each subject")
    english = int(input("Please enter your English Score:"))
    maths = int(input("Please enter your Maths Score:"))
    science = int(input("Please enter your Science Score:"))
    total = english + maths + science
    average = total/3
    return print(f"Your average score is {average}")

getSubjectScores()