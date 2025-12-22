import 'dart:io';

void main(){
  print("Enter First Number");
  int start=int.parse(stdin.readLineSync()!);
  print("Enter Second Project");
  int end=int.parse(stdin.readLineSync()!);

  for(int i=start;i<=end;i++){
    int flag=0;
    for(int j=1;j<=i;j++){
          if(i%j==0) {
            flag++;
          }
    }
    if(flag==2){
      print("$i");
    }
  }
}
