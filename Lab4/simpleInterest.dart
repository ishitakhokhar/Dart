import 'dart:io';

void simpleIntersest({double? t,double? p,double? r}){
  double ans=(t!*p!*r!)/100;
  print("Simple Interest $ans");
}

void main(){
  print("Enter Principal");
  double p=double.parse(stdin.readLineSync()!);
  print("Enter Rate");
  double r=double.parse(stdin.readLineSync()!);
  print("Enter Time");
  double t=double.parse(stdin.readLineSync()!);

  simpleIntersest(p:p,t:t,r:r);
}