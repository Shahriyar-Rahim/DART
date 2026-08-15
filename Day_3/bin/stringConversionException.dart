//Trying to parse invalid text (like entering "hello" when asked for an age) will crash the program with a FormatException.
//
// To prevent crashes safely, Dart provides int.tryParse():

void main() {
  String userInput = "abc";
  int? age = int.parse(userInput);
  print(age);
}

/*
* Output:
* Unhandled exception:
FormatException: Invalid radix-10 number (at character 1)
abc
^

#0      int._handleFormatError (dart:core-patch/integers_patch.dart:150:5)
#1      int._parseRadix (dart:core-patch/integers_patch.dart:179:14)
#2      int._parse (dart:core-patch/integers_patch.dart:121:12)
#3      int.parse (dart:core-patch/integers_patch.dart:81:12)
#4      main (file:///run/media/shahriyar/New%20Volume/Dart/Day_3/bin/stringConversionException.dart:7:18)
#5      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:313:19)
#6      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)

Process finished with exit code 255
* */