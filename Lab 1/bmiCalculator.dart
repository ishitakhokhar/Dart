import 'dart:io';

void main() {
  print("Enter Weight in Pounds: ");
  double pound = double.parse(stdin.readLineSync()!);

  print("Enter Height in Inches: ");
  double height = double.parse(stdin.readLineSync()!);

  double kg = pound * 0.453592;

  double meter = height * 0.0254;

  double bmi = kg / (meter * meter);

  print("Your BMI is: $bmi");
}
