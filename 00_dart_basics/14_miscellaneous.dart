// 00_dart_basics/14_miscellaneous.dart

// command
// dart run 00_dart_basics/14_miscellaneous.dart
//

// Typedefs (function type aliases)
typedef IntOperation = int Function(int a, int b);

int add(int a, int b) => a + b;
int multiply(int a, int b) => a * b;

// Extension Methods
extension NumberParsing on String {
  int parseToInt() => int.parse(this);
}

// Generics in classes and functions
class Box<T> {
  T content;
  Box(this.content);

  void showContent() {
    print('Box contains: $content');
  }
}

T genericFunction<T>(T value) {
  return value;
}

// Operator Overloading (simple example)
class Vector {
  final int x, y;
  Vector(this.x, this.y);

  Vector operator +(Vector other) {
    return Vector(x + other.x, y + other.y);
  }

  @override
  String toString() => 'Vector($x, $y)';
}

// Metadata and Annotations
class Todo {
  final String who;
  final String what;
  const Todo(this.who, this.what);
}

@Todo('Mahesh', 'Implement this feature later')
void someFunction() {
  print('Function with annotation');
}

void main() {
  // Typedef usage
  IntOperation operation = add;
  print('Add: ${operation(5, 3)}');
  operation = multiply;
  print('Multiply: ${operation(5, 3)}');

  // Extension method usage
  print('Parsing "123" to int: ${"123".parseToInt()}');

  // Generics usage
  var box1 = Box<String>('Hello');
  box1.showContent();

  var box2 = Box<int>(42);
  box2.showContent();

  print('Generic function returns: ${genericFunction<double>(3.14)}');

  // Operator Overloading
  var v1 = Vector(1, 2);
  var v2 = Vector(3, 4);
  var v3 = v1 + v2;
  print('Vector addition: $v3');

  // Metadata usage
  someFunction();
}
