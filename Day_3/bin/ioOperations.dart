import 'dart:io';

void main() {
  stdout.write("Enter your name: ");

  String? input = stdin.readLineSync();

  String name = input ?? "Anonymus";

  print("Welcome to Dart, $name!");
}