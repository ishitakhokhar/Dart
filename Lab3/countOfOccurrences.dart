import 'dart:collection';

void main(){
  String sentence='this is a test this is a';
  Map<String,int> wordCount={};
  List<String> words=sentence.split(' ');

  for(String word in words){
    if(wordCount.containsKey(word)){
      wordCount[word]=wordCount[word]!+1;
    }
    else{
      wordCount[word]=1;
    }
  }
  print("$wordCount");
}