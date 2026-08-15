import 'dart:io';

String getRoleName(int roleId) => switch (roleId) {
  1 => "Admin",
  2 => "Editor",
  _ => "Guest",
};

void main() {
  stdout.write("Enter Id 1 or 2: ");
  String? inp = stdin.readLineSync();

  if(inp == null || inp.isEmpty){
    print("Invalid Id");
    return;
  }

  int? id = int.tryParse(inp);

  if (id == null) {
    print("Invalid Id: Please enter a number");
    return;
  }

  String role = getRoleName(id);

  if (id == 1 || id == 2) {
    print("Role: $role");
  } else {
    print("Invalid Id: $id. Role set to: $role");
  }
}