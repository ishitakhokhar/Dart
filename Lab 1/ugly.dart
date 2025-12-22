import 'dart:io';

void main() {
  print("Enter Number:");
  double num = double.parse(stdin.readLineSync()!);
  double original = num;

  int flag = 0;

  while (num != 1) {
    if (num % 2 == 0) {
      num /= 2;
    }
    else if (num % 3 == 0) {
      num /= 3;
    }
    else if (num % 5 == 0) {
      num /= 5;
    }
    else {
      flag = 1;
      break;
    }
  }

  if (flag == 0) {
    print("$original is an Ugly Number");
  } else {
    print("$original is NOT an Ugly Number");
  }
}
