import 'dart:io';

void main(){
  print("Enter Number");
  int num=int.parse(stdin.readLineSync()!);

  if(num<0){
    print("$num is neagative");
  }
  else{
    print("$num is positive");
  }
}