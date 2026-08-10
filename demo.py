while True:
    print("1. ADDITION ")
    print("2. SUBTRACT ")
    print("3. MULTIPLY ")
    print("4. DIVIDE ")
    print("5. EXIT ")

    choice = int(input("enter the choice : "))

    #addition
    if choice == 1:
        num = int(input("enter the number : "))
        num1 = int(input("enter the number : "))
        print("")
        print("the addition number : ", num + num1)

    #subtraction
    elif choice == 2:
        num = int(input("enter the number : "))
        num1 = int(input("enter the number : "))
        print("")
        print("the subtraction number : ", num - num1)
    #multiplication
    elif choice == 3:
        num = int(input("enter the number : "))
        num1 = int(input("enter the number : "))
        print("")
        print("the multiliccation number : ", num * num1)

    #division
    elif choice == 4:
        num = int(input("enter the number : "))
        num1 = int(input("enter the number : "))
        print("")
        print("the division number : ", num / num1)
    #exit
    elif choice == 5:
        print("program exited")
        break
    else:
        print("invalid choice ! program exited")