void main() {
  String personName = "Bankah";
  String personName2 = "";
  String twoFerMessage = twoFer(personName);
  String twoFerMessage2 = twoFer(personName2);
  print(twoFerMessage);
  print(twoFerMessage2);
}

String twoFer(String? name) {
  String person = (name == null || name.isEmpty) ? 'you' : name.trim();
  return '\nOne for $person, one for me.';
}
