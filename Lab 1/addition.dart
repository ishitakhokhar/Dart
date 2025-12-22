import 'dart:io';

void main(){
  print("Enter First Number");
  int a=int.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  int b=int.parse(stdin.readLineSync()!);
  int sum=a+b;
  print("The Sum of $a and $b is $sum");
}