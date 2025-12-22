void main() {
  int start = 10;
  int end = 50;

  print("Numbers between $start and $end divisible by 2 but not by 3:");

  for (int i = start; i <= end; i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      print(i);
    }
  }
}