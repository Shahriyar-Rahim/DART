import 'dart:io';

void main() {
  print("Minute to TIme converter");
  print("(Type 'exit' to quit)\n");

  while(true) {
    stdout.write("Enter the number of minutes: ");
    String? input = stdin.readLineSync();

    if(input != null && input.trim().toLowerCase() == 'exit'){
      print("GoodBye!");
      break;
    }

    if(input != null && input.isNotEmpty){
      int? totalMinutes = int.tryParse(input);

      if(totalMinutes == null || totalMinutes < 0){
        print("Error: Please enter a valid positive number.\n");
        continue;
      }

      int days = totalMinutes ~/ 1440;
      int remainingMInutes = totalMinutes % 1440;

      int hour24 = remainingMInutes ~/ 60;
      int minutes = remainingMInutes % 60;

      String period = (hour24 >= 12) ? "PM": "AM";

      int hour12 = hour24 % 12;
      if(hour12 == 0) hour12 == 12;

      String minutesString = minutes.toString().padLeft(2, '0');

      String timeString = "$hour12:$minutesString $period";
      if(days > 0) {
        String dayLabel = (days == 1) ? "day" : "days";

        print("Result: $timeString (+$days $dayLabel)\n");
      } else {
        print("Result: $timeString\n");
      }
    } else {
      print("Error: Input cannot be empty.\n");
    }
  }
}