void main() {
  int count = 1;

  // ❌ WRONG (Works in C, FAILS in Dart):
  // if (count) { print("Has items"); }

  if(count > 0) {
    print("Has items");
  }

}