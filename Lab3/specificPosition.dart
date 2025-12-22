import 'dart:io';

void main() {
  List<int> nums = [1, 2, 4, 5];

  print("Enter Number : ");
  int num = int.parse(stdin.readLineSync()!);

  print("Enter Position you want to enter your element: ");
  int pos = int.parse(stdin.readLineSync()!);

  nums.add(0);

  int temp1 = num;
  int temp2;

  int i = pos;
  while (i < nums.length) {
    temp2 = nums[i];
    nums[i] = temp1;
    temp1 = temp2;
    i++;
  }

  print(nums);
}
