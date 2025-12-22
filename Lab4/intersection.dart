List<int> intersect(List<int> arr1,List<int>arr2){
  List<int>result=List.filled(arr1.length, 0);

  int k=0;

  for(int i=0;i<arr1.length;i++){
    for(int j=0;j<arr2.length;j++){
      if(arr1[i]==arr2[j]){
        result[k]=arr1[i];
        k++;

        arr2[j]=-1;
        break;
      }
    }
  }

  List<int> finalResult=[];
  for(int i=0;i<k;i++){
    finalResult.add(result[i]);
  }
  return finalResult;
}

void main() {
  List<int> arr1 = [1, 2, 2, 1];
  List<int> arr2 = [2, 2];

  print(intersect(arr1, arr2));
}