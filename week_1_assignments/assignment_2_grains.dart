void main() {
  int n = 5;
  BigInt result = square(n);
      print('\nThe number of grains on square $n is: $result');
      BigInt totalGrains = total();
      print('\nThe total number of grains on the chessboard is: $totalGrains');
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

// Efficient
BigInt square2(final int n) {
  if (n < 1 || n > 64) {
    throw ArgumentError("Square must be between 1 and 64");
  }
  return BigInt.from(2).pow(n - 1);
}