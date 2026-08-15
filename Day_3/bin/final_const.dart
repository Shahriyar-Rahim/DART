void main() {
  //const: Hardcoded value known at compile time
  const double pr = 3.1216;
  const String appName = "My App";

  //final: Value calculated at runtime when the code runs
  final DateTime now = DateTime.now();
  final int userAge = 20;
  print(now);

  // ❌ ERROR: DateTime.now() is calculated at runtime, so const CANNOT use it!
  // const DateTime currentTime = DateTime.now();

  // ❌ ERROR: Neither final nor const can be reassigned!
  // pi = 3.14;
}