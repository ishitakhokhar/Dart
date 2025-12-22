void oddEven() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int even = 0, odd = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }

  print("Even numbers: $even");
  print("Odd numbers: $odd");
}

void main() {
  oddEven();
}
