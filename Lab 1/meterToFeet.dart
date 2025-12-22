import 'dart:io';

void main(){
  print("Enter distance in meter");
  double meter=double.parse(stdin.readLineSync()!);
  double feet=meter*3.28084;
  print("Meter in feet is $feet");
}