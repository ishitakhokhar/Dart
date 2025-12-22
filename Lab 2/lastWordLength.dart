void main(){
  String s='Hello World';

  List<String> s2=s.split(" ");
  print(s2);

  int len=s2.length;
  print("Last World : ${s2[len-1]}");

  int wordLength=s2[len-1].length;
  print("Length $wordLength");
}