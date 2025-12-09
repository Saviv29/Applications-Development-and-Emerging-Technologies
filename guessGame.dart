/*
Name: Juan Paolo C. Vivas
Section: WD - 303
Subject: Applications Development & Emerging Technologies (6ADET)
*/

import 'dart:io';

void main () {
  //Declare Magic Number
  const int magicNum = 12;

  int guessCount = 0;
  bool right_Guess = false;

  print("Hi There! Welcome to the Guess the Number Game!");
  print("Please try to guess the Magic Number!");

  while (!right_Guess) {
    stdout.write("Please Enter Your Desired Guess: ");
    String input = stdin.readLineSync();
    int guess = int.parse(input);
    guessCount++;

    if (guess == magicNum) {
      print("Congratulations! The Magic Number is $magicNum.");
      print("You had able to guessed it in $guessCount attempt(s).");
      right_Guess = true;
    } else if (guess < magicNum) {
      print("Sorry that is too low.. Try a higher number next time!");
    } else {
      print("Sorry that is too high! Try a lower number instead..");
    }
  }
}