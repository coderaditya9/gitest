"""A simple menu-driven calculator program."""

while True:
    print("1. ADDITION")
    print("2. SUBTRACT")
    print("3. MULTIPLY")
    print("4. DIVIDE")
    print("5. EXIT")

    choice = int(input("Enter the choice: "))

    # Addition
    if choice == 1:
        num = int(input("Enter the number: "))
        num1 = int(input("Enter the number: "))
        print("")
        print("The addition number:", num + num1)

    # Subtraction
    elif choice == 2:
        num = int(input("Enter the number: "))
        num1 = int(input("Enter the number: "))
        print("")
        print("The subtraction number:", num - num1)

    # Multiplication
    elif choice == 3:
        num = int(input("Enter the number: "))
        num1 = int(input("Enter the number: "))
        print("")
        print("The multiplication number:", num * num1)

    # Division
    elif choice == 4:
        num = int(input("Enter the number: "))
        num1 = int(input("Enter the number: "))
        print("")
        print("The division number:", num / num1)

    # Exit
    elif choice == 5:
        print("Program exited")
        break

    else:
        print("Invalid choice!")

        