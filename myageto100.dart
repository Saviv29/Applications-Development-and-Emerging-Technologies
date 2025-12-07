import 'dart:io';

void main () {
  //Nickname of User
  stdout.write("Please Enter Your Nickname: ");
  String nickname = stdin.readLineSync();

  //Current Age of User
  stdout.write("Please Enter Your Current Age: ");
  String c_Age = stdin.readLineSync();
  int age = int.parse(c_Age);

  //Formula to Calculate Remaining Years
  int yearsRemaining = 100 - age;

  //Display of the Result
  print("Hi there $nickname! You have $yearsRemaining years(s) left before you reach 100 years old.");
  print("Hang in there you will receive One Hundred Thousand Pesos (P 100,000.00) from the Government!");
}
