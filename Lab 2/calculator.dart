import 'dart:io';

void main(){
  print("Enter First Number");
  double num1=double.parse(stdin.readLineSync()!);
  print("Enter Seconde Number");
  double num2=double.parse(stdin.readLineSync()!);
  print("Enter Operator you want to perform(+,-,*,/)");
  String operator=stdin.readLineSync()!;

  double result=0;
  if(operator=='+'){
    result=num1+num2;
  }
  else if(operator=='-'){
    result=num1-num2;
  }
  else if(operator=='*'){
    result=num1*num2;
  }
  else if(operator=='/'){
    if(num2==0){
      print("Invalid Number");
    }
    result=num1/num2;
  }
  print("$result");
}

