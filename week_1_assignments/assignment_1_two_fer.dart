import 'dart:io';

void main() {
  print("Please enter the person's name: ");
  String? personName = stdin.readLineSync();
  String twoFerMessage = twoFer(personName);
  print(twoFerMessage);
}

String twoFer(String? name) {
  String person = (name == null || name.isEmpty) ? 'you' : name.trim();
  return '\nOne for $person, one for me.';
}
