import 'dart:io';

void main() {
  // Prompt the user to enter a numnber from 1 to 60
  print('Please enter a number from 1 to 64: ');

  // Read the input from the console
  String? number = stdin.readLineSync();

  // Check if the number is not null and not empty
  if (number != null && number.isNotEmpty) {
    // Convert the input to an integer
    int? n = int.tryParse(number);

    // Check if the conversion was successful and the number is within the valid range
    if (n != null && n >= 1 && n <= 64) {
      BigInt result = square(n);
      print('\nThe number of grains on square $n is: $result');

      BigInt totalGrains = total();
      print('\nThe total number of grains on the chessboard is: $totalGrains');
    } else {
      print('\nPlease enter a valid number between 1 and 64.');
    }
  } else {
    print(
      '\nInput cannot be null or empty. Please enter a number between 1 and 64.',
    );
  }
}

BigInt square(final int n) {
  // Check if the square is within the valid range
  if (n < 1 || n > 64) {
    throw ArgumentError('Square must be between 1 and 64');
  }

  // Set the initial value for the number of grains on the square to 1
  BigInt result = BigInt.one;

  // Calculate the number of grains on the nth square
  // The number of grains doubles for each square, starting from 1 on the first square
  // Square 1 = 1 grain
  // Square 2 = Square 1 * 2 = 2 grains
  // Square 3 = Square 2 * 2 = 4 grains
  // Square 4 = Square 3 * 2 = 8 grains
  // and so on...
  for (int i = 1; i < n; i++) {
    result *= BigInt.two;
  }
  return result;
}

BigInt total() {
  // Calculate the total number of grains on the chessboard
  BigInt totalGrains = BigInt.zero;
  for (int i = 1; i <= 64; i++) {
    totalGrains += square(i);
  }
  return totalGrains;
}
