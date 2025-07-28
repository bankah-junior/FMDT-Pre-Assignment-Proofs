import 'dart:io';

void main() {
  // Prompt the user to enter their name
  print("Please enter the person's name: ");

  // Read the input from the console
  String? personName = stdin.readLineSync();

  // Call the twoFer function with the provided name and store the result
  String twoFerMessage = twoFer(personName);

  // Print the result
  print(twoFerMessage);
}

String twoFer(String? name) {
  // If the name is null or empty, use "you" else use the name provided
  String person = (name == null || name.isEmpty) ? 'you' : name.trim();

  // Return message
  return '\nOne for $person, one for me.';
}
