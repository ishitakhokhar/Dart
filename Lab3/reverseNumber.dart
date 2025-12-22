void main() {
  int num = 1234;
  print(reverseNumber(num));
}
  int reverseNumber(int n) {
    int revNum = 0;
    while (n > 0) {
      revNum = revNum * 10 + n % 10;
      n = n ~/ 10;
    }
    return revNum;
  }
