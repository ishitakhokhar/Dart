void main() {
  int age = 20;
  String name = "Ishita";

  Students s = Students(age, name);
  s.printAgeName();
}

class Students {
  int? age;
  String? name;

  Students(int age, String name) {
    this.age = age;
    this.name = name;
  }

  void printAgeName() {
    print(this.age);
    print(this.name);
  }
}
