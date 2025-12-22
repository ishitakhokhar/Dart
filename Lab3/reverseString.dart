String reverseString(String s) {
  return s.split('').reversed.join('');
}

void main() {
  String original = "hello";
  String reversed = reverseString(original);
  print(reversed);
}