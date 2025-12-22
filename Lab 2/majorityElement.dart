void main(){
  List<int> numbers=[2,2,1,1,1,2,2];
    int count=0;
    int update=0;

    for(int i in numbers) {
      if (count == 0) {
        update = i;
      }
      if (num == update) {
        count++;
      }
      else {
        count--;
      }
    }
  print("Majority Element is $update");
}