import 'dart:io';

int check(int num){
  bool isprime=true;

  if(num<=1){
    isprime=false;
  }
  for(int i=2;i<=num/2;i++){
    if(num%i==0){
      isprime=false;
    }
    else{
      isprime=true;
    }
  }
  if(isprime==true){
      return 1;
  }
  else{
    return 0;
  }
}

void main(){
  print("Enter Number");
  int num1=int.parse(stdin.readLineSync()!);
  print(check(num1));

}