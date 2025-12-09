/*
Name: Juan Paolo C. Vivas
Section: WD - 304
Subject: Applications Development & Emerging Technologies (6ADET)
*/
import 'dart:io';

void main () {

  //User First Number Input!!
  stdout.write("Please enter first number: ");
  String first_in = stdin.readLineSync();
  double num1 = double.parse(first_in);

  //User Second Number Input!!
  stdout.write("Please enter second number: ");
  String second_in = stdin.readLineSync();
  double num2 = double.parse(second_in);

  //Formula Calculator!!!
  double sum = num1 + num2;
  double difference = num1 + num2;
  double product = num1 * num2;
  double quotient = num1 / num2;
  double average = (num1 + num2) / 2;

  //Display of Results!!
  print("\nResults:");
  print("Sum: $sum");
  print("Difference: $difference");
  print("Product: $product");
  print("Quotient: $quotient");
  print("Average: $average");
}