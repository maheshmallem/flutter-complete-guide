// 3. Operators in Dart

void main() {
  // --------------------------------------------
  // Arithmetic Operators
  // --------------------------------------------
  int a = 10;
  int b = 3;

  print('Addition: ${a + b}');         // 13
  print('Subtraction: ${a - b}');      // 7
  print('Multiplication: ${a * b}');   // 30
  print('Division: ${a / b}');         // 3.333...
  print('Modulus: ${a % b}');          // 1

  // --------------------------------------------
  // Assignment Operators
  // --------------------------------------------
  int x = 5;
  x += 2; // Same as x = x + 2
  print('x after += 2: $x'); // 7

  x -= 1;
  print('x after -= 1: $x'); // 6

  x *= 3;
  print('x after *= 3: $x'); // 18

  x ~/= 2; // Integer division assignment
  print('x after ~/= 2: $x'); // 9

  // --------------------------------------------
  // Comparison Operators
  // --------------------------------------------
  print('a == b: ${a == b}'); // false
  print('a != b: ${a != b}'); // true
  print('a > b: ${a > b}');   // true
  print('a < b: ${a < b}');   // false
  print('a >= b: ${a >= b}'); // true
  print('a <= b: ${a <= b}'); // false

  // --------------------------------------------
  // Logical Operators
  // --------------------------------------------
  bool isAdult = true;
  bool hasID = false;

  print('Can Enter: ${isAdult && hasID}'); // false
  print('Can Try Entry: ${isAdult || hasID}'); // true
  print('Not isAdult: ${!isAdult}'); // false

  // --------------------------------------------
  // Type Test Operators
  // --------------------------------------------
  var value = 'Dart';
  print('value is String: ${value is String}'); // true
  print('value is! int: ${value is! int}'); // true

  // --------------------------------------------
  // Null-aware Operators
  // --------------------------------------------
  String? name;
  print('Name or default: ${name ?? "Guest"}'); // Guest

  name ??= 'Mahesh'; // Assign only if null
  print('Updated name: $name'); // Mahesh

  // Null-aware access
  int? length = name?.length;
  print('Length of name: $length'); // 6
}
