import 'dart:io';

void main() {
  stdout.write("Enter the number of minutes: ");
  final input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print("Input cannot be empty.");
    return;
  }

  final minute = int.tryParse(input);
  if (minute == null || minute < 0) {
    print("Please enter a valid non-negative number.");
    return;
  }

  final hours = minute ~/ 60;
  final remainingMinutes = minute % 60;

  print("$minute minutes is $hours hours and $remainingMinutes minutes.");
}