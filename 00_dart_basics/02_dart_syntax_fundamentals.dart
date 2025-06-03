// 2. Dart Syntax & Fundamentals
// command to run 
// dart run 00_dart_basics/02_dart_syntax_fundamentals.dart
//
void main() {
  // --------------------------------------------
  // Variables: var, final, const
  // --------------------------------------------
  var name = 'Mahesh'; // Type inferred as String
  final age = 30; // Value can't be changed after assignment
  const country = 'India'; // Compile-time constant

  print('Name: $name'); // Output: Name: Mahesh
  print('Age: $age'); // Output: Age: 30
  print('Country: $country'); // Output: Country: India

  // Uncommenting below will cause error
  // age = 31; // ❌ final variable can't be reassigned
  // country = 'USA'; // ❌ const can't be reassigned

  // --------------------------------------------
  // Data Types
  // --------------------------------------------
  int year = 2025;
  double pi = 3.1415;
  String greeting = 'Hello, Dart!';
  bool isDartFun = true;
  dynamic flexible = 'Can be any type';
  Object fixed = 42;

  print('Year: $year'); // Output: Year: 2025
  print('Pi: $pi'); // Output: Pi: 3.1415
  print('Greeting: $greeting'); // Output: Hello, Dart!
  print('Is Dart fun? $isDartFun'); // Output: Is Dart fun? true
  print('Dynamic value: $flexible'); // Output: Can be any type
  print('Object value: $fixed'); // Output: 42

  flexible = 12345; // dynamic can be reassigned to another type
  print('Updated dynamic: $flexible'); // Output: 12345

  // --------------------------------------------
  // Comments
  // --------------------------------------------

  // This is a single-line comment

  /*
    This is a multi-line comment
    explaining that Dart supports
    multiple types of comments.
  */

  /// This is a documentation comment.
  /// Used for generating docs and helpful for IDEs.
}
