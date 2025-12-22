import 'dart:io';

void main(){
  Map<String,int> dict={};
  String name;
  int num;

  print("Enter Name and numbe you want to enter : ");
  int size=int.parse(stdin.readLineSync()!);

  for(int i=0;i<size;i++){
    print("Enter Name : ");
    name=stdin.readLineSync()!;
    print("Enter Number : ");
    num=int.parse(stdin.readLineSync()!);

    dict[name]=num;
  }

  print("Phone Book $dict");
}