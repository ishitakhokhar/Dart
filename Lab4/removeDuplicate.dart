int removeDuplicate(List<int> arr1) {
  if (arr1.isEmpty) return 0;

  int i = 1;

  for (int j = 1; j < arr1.length; j++) {
    if (arr1[j] != arr1[j - 1]) {
      arr1[i] = arr1[j];
      i++;
    }
  }
  return i;
}

void main() {
  List<int> arr1 = [1, 1, 2];
  int k = removeDuplicate(arr1);
  print(k);
}
