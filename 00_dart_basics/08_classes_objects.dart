// 8. Classes and Objects (OOP Basics)
// command
// dart run 00_dart_basics/08_classes_objects.dart
//
void main() {
  // Creating object
  Person person = Person("Mahesh", 30);
  person.displayInfo();

  // Named constructor
  Person guest = Person.guest();
  guest.displayInfo();

  // Getters and Setters
  person.age = 31;
  print("Updated Age: ${person.age}");

  // Static method
  print("Planet: ${Person.planet}");
  Person.sayHello();

  // Inheritance and Overriding
  Employee emp = Employee("Gopal", 28, "Developer");
  emp.displayInfo();

  // Abstract class and polymorphism
  Animal cat = Cat();
  cat.sound();

  // Using a mixin
  Robot robot = Robot();
  robot.charge();
  robot.move();
}

// ✅ Class with constructor, instance variables and methods
class Person {
  String name;
  int _age; // private variable

  Person(this.name, this._age);

  // Named constructor
  Person.guest() : name = "Guest", _age = 0;

  // Method
  void displayInfo() {
    print("Name: $name, Age: $_age");
  }

  // Getter
  int get age => _age;

  // Setter
  set age(int value) {
    if (value > 0) _age = value;
  }

  // Static variable and method
  static String planet = "Earth";

  static void sayHello() {
    print("Hello from $planet!");
  }
}

// ✅ Inheritance
class Employee extends Person {
  String role;

  Employee(String name, int age, this.role) : super(name, age);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Role: $role");
  }
}

// ✅ Abstract class and polymorphism
abstract class Animal {
  void sound(); // abstract method
}

class Cat extends Animal {
  @override
  void sound() {
    print("Meow!");
  }
}

// ✅ Mixin
mixin Movable {
  void move() => print("Moving...");
}

class Robot with Movable {
  void charge() => print("Charging battery...");
}
