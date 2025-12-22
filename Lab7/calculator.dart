import 'dart:io';

void main() {
  print("Enter First Number");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter Second Number");
  int b = int.parse(stdin.readLineSync()!);

  Calculator c = Calculator();
  c.add(a, b);
  c.subtract(a, b);
  c.multiply(a, b);
  c.division(a, b);
}

class Calculator {
  void add(int a, int b) {
    print("Addition of two numbers is ${a + b}");
  }

  void subtract(int a, int b) {
    print("Subtraction of two numbers is ${a - b}");
  }

  void multiply(int a, int b) {
    print("Multiplication of two numbers is ${a * b}");
  }

  void division(int a, int b) {
    if (b == 0) {
      print("Number cannot be divided by zero");
    } else {
      print("Division of two numbers is ${a / b}");
    }
  }
}
