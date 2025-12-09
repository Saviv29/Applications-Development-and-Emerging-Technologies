/*
Name: Juan Paolo C. Vivas
Section: WD - 304
Subject: Applications Development & Emerging Technologies (6ADET)
*/

import 'dart:io';

double getSum(double a, double b) => a + b;
double getDifference(double a, double b) => a - b;
double getProduct(double a, double b) => a * b;
double getQuotient(double a, double b) => a / b;

void main () {
  bool cont_Prog = true;

  while (cont_Prog) {
    // Must Display the option first so that if the user wants to exit immediately, he can do so.
    print("\nSelect Operation:");
    print("1. Addition (Sum)");
    print("2. Subtraction (Difference)");
    print("3. Multiplication (Product)");
    print("4. Division (Quotient)");
    print("5. Exit/Done");

    stdout.write("Please Enter Your Choice (1-5): ");
    String choice = stdin.readLineSync();

    if (choice == "5") {
      print("Hope you enjoyed using it. Thank you! Till next time!");
      cont_Prog = false;
      continue;
    }

    // Must validate the chosen option first..!!
    if (!(["1", "2", "3", "4"].contains(choice))) {
      print("Sorry, you have chosen an invalid option. Please select 1-5. Thank you!\n");
      continue; // go back to menu
    }

    // User provides two numbers only if choice is valid!!!
    stdout.write("Please Enter First Number: ");
    double num1 = double.parse(stdin.readLineSync());

    stdout.write("Please Enter Second Number: ");
    double num2 = double.parse(stdin.readLineSync());

    switch (choice) {
      case "1":
        print("Sum = ${getSum(num1, num2)}\n");
        break;
      case "2":
        print("Difference = ${getDifference(num1, num2)}\n");
        break;
      case "3":
        print("Product = ${getProduct(num1, num2)}\n");
        break;
      case "4":
        if (num2 != 0) {
          print("Quotient = ${getQuotient(num1, num2)}\n");
        } else {
          print("Error Occurred: Division by Zero is not permitted. Try another number instead.\n");
        }
        break;
    }
  }
}

