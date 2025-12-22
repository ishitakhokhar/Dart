// WAP to demonstrate Inheritance

void main() {
  Manager m = Manager("Ishita", 50000, "IT");
  m.displayInfo();
}

class Employee {
  String? name;
  double? salary;

  Employee(String name, double salary) {
    this.name = name;
    this.salary = salary;
  }

  void displayInfo() {
    print("${this.name} has ${this.salary} salary");
  }
}

class Manager extends Employee {
  String? department;

  Manager(String name, double salary, String department) : super(name, salary) {
    this.department = department;
  }

  @override
  void displayInfo() {
    print("${this.name} has ${this.salary} salary and works in ${this.department} department");
  }
}
