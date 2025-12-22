import 'dart:io';

int fibonaci(int range){
  if(range<=1){
    return range;
  }
  return(fibonaci(range-1)+fibonaci(range-2));
}

void main(){
  print("Enter Range");
  int range=int.parse(stdin.readLineSync()!);

  for(int i=0;i<=range;i++){
    print(fibonaci(i));
  }
}