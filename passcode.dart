/*
Name: Juan Paolo C. Vivas
Section: WD - 303
Subject: Applications Development & Emerging Technologies
*/

import 'dart:io';

void main () {

  const String correctPasscode = "54321";

  int maxAttempts = 3;
  int attempts = 0;
  bool code_Success = false;

  while (attempts < maxAttempts && !code_Success) {
    stdout.write("Please Enter Passcode: ");
    String input = stdin.readLineSync();

    if(input == correctPasscode) {
      print("Code Successful");
      code_Success = true;
    } else {
      attempts++;
      int remaining = maxAttempts - attempts;
      if (remaining > 0) {
        print("Code Incorrect. You stil have $remaining attempt(s) left.");
      }
    }
  }
  if (!code_Success) {
    print("User's Account Has Been Locked!");
  }
}