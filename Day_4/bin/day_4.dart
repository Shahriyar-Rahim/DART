import 'dart:io';

String getGradeMessage(String grade) => switch (grade.toUpperCase()) {
  'A' => "A",
  'A+' => "A+",
  _ => "Default"
};

void main(){
  stdout.write("ENter your grade: ");
  final input = stdin.readLineSync();

  if(input == null || input.trim().isEmpty ){
    print("Can not be empty or number");
    return;
  }

  if (double.tryParse(input) != null) {
    print("Grade cannot be a number.");
    return;
  }

  final result = getGradeMessage(input);
  print(result);
}