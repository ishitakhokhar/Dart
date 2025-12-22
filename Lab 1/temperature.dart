import 'dart:io';

void main(){
  print("Enter Temperature in Fahrenheit");
  double f=double.parse(stdin.readLineSync()!);
  double c=(f-32)/1.8;
  print("Celsius $c");
}