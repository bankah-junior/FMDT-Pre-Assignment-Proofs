import 'dart:io';

void main() {
  print('Please enter a number from 1 to 64: ');
  String? number = stdin.readLineSync();
  if (number != null && number.isNotEmpty) {
    int? n = int.tryParse(number);
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
  if (n < 1 || n > 64) {
    throw ArgumentError('Square must be between 1 and 64');
  }
  BigInt result = BigInt.one;
  for (int i = 1; i < n; i++) {
    result *= BigInt.two;
  }
  return result;
}

BigInt total() {
  BigInt totalGrains = BigInt.zero;
  for (int i = 1; i <= 64; i++) {
    totalGrains += square(i);
  }
  return totalGrains;
}
