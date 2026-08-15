void main() {
  print(5 / 2); //prints 2.5 (double)
  print(5 ~/ 2); //prints 2 (integer)

//   Provides a default fallback value if a variable is null:

  String? username; // now null

//   it username is null, use "Guest"
  String displayName = username ?? "Guest";
  print(displayName); //output: guest
}