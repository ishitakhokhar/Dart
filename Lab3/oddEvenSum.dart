import 'dart:io';

void main() {
  int sumPositiveEven = 0;
  int sumNegativeOdd = 0;

  while (true) {
    print("Enter Number");
    int num = int.parse(stdin.readLineSync()!);

    if (num == 0) {
      print("Program Stopped.");
      break;
    }


    if (num > 0 && num % 2 == 0) {
      sumPositiveEven += num;
    }


    else if (num < 0 && num % 2 != 0) {
      sumNegativeOdd += num;
    }
  }
  print("Sum of Positive Even Numbers : $sumPositiveEven");
  print("Sum of Negative Odd Numbers  : $sumNegativeOdd");
}
