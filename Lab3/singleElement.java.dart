void main(){
  List<int>nums=[4,1,2,1,2];
  int ans=0;
  for(int num in nums){
    ans^=num;
  }
  print("$ans");
}