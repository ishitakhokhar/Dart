void main() {
  List<int> nums = [-2, -1, -3];

  int current = nums[0];
  int max_element = nums[0];

  for (int i = 1; i < nums.length; i++) {

    if (current  < nums[i]) {
      current = nums[i];
    } else {
      current = current + nums[i];
    }

    if (current > max_element) {
      max_element = current;
    }
  }

  print(max_element);
}
