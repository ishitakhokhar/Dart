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

  print("Enter Target : ");
  int target=int.parse(stdin.readLineSync()!);

  int sum=0;
  for(int i=0;i<size;i++){
    for(int j=i+1;j<size;j++){
      sum=li[i]+li[j];
      if(sum==target){
        print("Indices are $i and $j");
      }
    }
  }
}