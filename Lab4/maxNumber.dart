import 'dart:io';

void maxNumber(int num1,int num2){
  int max=num1>num2 ? num1:num2;
  print("Maximum Number is $max");
}

void main(){
  print("Enter First Number");
  int num1=int.parse(stdin.readLineSync()!);

  print("Enter Second Number");
  int num2=int.parse(stdin.readLineSync()!);

  maxNumber(num1, num2);
}