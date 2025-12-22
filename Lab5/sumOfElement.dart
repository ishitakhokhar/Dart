import 'dart:io';

void main(){
  List<int> li=[];
  int element;

  print("Enter Size : ");
  int size=int.parse(stdin.readLineSync()!);

  for(int i=0;i<size;i++){
    print("Enter Element : ");
    element=int.parse(stdin.readLineSync()!);
    li.add(element);
  }
  print("List : $li");
  int sum=0;
  for(int i in li){
    if(i%3==0 || i%5==0){
      sum+=i;
    }
  }
  print("Sum : $sum");
}