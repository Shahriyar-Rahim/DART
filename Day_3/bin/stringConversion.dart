import 'dart:io';

void main() {
  stdout.write("Enter your birth year: ");
  String? input = stdin.readLineSync();

  if(input != null && input.isNotEmpty) {
    int bithYear = int.parse(input);
    int currentYear = 2026;
    int age = currentYear - bithYear;

    print("You are $age years old!");
  }
}