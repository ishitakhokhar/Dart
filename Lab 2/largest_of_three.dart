import 'dart:io';

void main(){
  print("Enter First Number");
  int num1=int.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  int num2=int.parse(stdin.readLineSync()!);
  print("Enter Third Number");
  int num3=int.parse(stdin.readLineSync()!);

  int max=(num1>num2) ? (num1>num3 ? num1:num3) : (num2>num3?num2:num3);
  print("Largest Number is $max");
}