int factorialRecursive(int n) {
  if (n < 0) {
    print("Number is negative");
  }
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorialRecursive(n - 1);
  }
}

void main() {
  int number = 5;
  print("Factorial of $number (recursive): ${factorialRecursive(number)}");
}