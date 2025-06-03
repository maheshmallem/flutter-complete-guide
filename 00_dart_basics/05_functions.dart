// 5. Functions in Dart

// command
// dart run 00_dart_basics/05_functions.dart
//

// Defining functions and return types
String greet(String name) {
  return "Hello, $name!";
}

// Void function
void printMessage(String message) {
  print("Message: $message");
}

// Positional parameters
int add(int a, int b) {
  return a + b;
}

// Named parameters
void greetUser({required String name, int age = 18}) {
  print("Name: $name, Age: $age");
}

// Default parameters
int multiply([int a = 2, int b = 3]) {
  return a * b;
}

// Arrow syntax
int square(int x) => x * x;

// Anonymous function
void listExample() {
  var items = ['A', 'B', 'C'];
  items.forEach((item) {
    print("Item: $item");
  });
}

// Higher-order function
void calculate(int a, int b, Function operation) {
  int result = operation(a, b);
  print("Result: $result");
}

// Closure example
Function counter() {
  int count = 0;
  return () {
    count++;
    print("Counter: $count");
  };
}

void main() {
  // Basic functions
  print(greet("Mahesh")); // Hello, Mahesh!
  printMessage("This is a message.");

  // Positional & named parameters
  print("Add: ${add(5, 7)}");
  greetUser(name: "John", age: 25);
  greetUser(name: "Alice");

  // Default parameters
  print("Multiply: ${multiply()}");

  // Arrow syntax
  print("Square: ${square(6)}");

  // Anonymous function
  listExample();

  // Higher-order function
  calculate(10, 5, (a, b) => a + b); // addition
  calculate(10, 5, (a, b) => a * b); // multiplication

  // Closures
  var myCounter = counter();
  myCounter(); // Counter: 1
  myCounter(); // Counter: 2
}
