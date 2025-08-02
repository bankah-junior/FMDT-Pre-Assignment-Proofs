import 'dart:io';

void main() {
	print('Enter a year: ');
	String? input = stdin.readLineSync();
	if (input == null || input.isEmpty){
		return print('No input provided');
	}
	int? n = int.tryParse(input);
	if (n == null){
		return print('Invalid input. Please enter a valid number.');
	}
	if(n%4 == 0){
		if(n%100 == 0){
			if(n%400 == 0){
				return print('${n} was a leap year!');
			} else {
				return print('${n} was not a leap year as it\'s not divisible by 400');
			}
		} else {
			return print('${n} was not a leap year as it\'s not divisible by 100');
		}	
	}
	print('${n} was not a leap year as it\'s not divisible by 4');
}