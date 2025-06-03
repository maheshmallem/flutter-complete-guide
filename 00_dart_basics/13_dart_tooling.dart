
// command
// dart run 00_dart_basics/13_dart_tooling.dart
//

void main() {
  // Example code with bad formatting:
  int  a=5;int b=10;int sum=a+b;print('Sum:$sum');

  // To format this code, run in terminal:
  // dart format 00_dart_basics/13_dart_tooling.dart

  // Dart analyzer helps find errors or warnings:
  // Run in terminal:
  // dart analyze

  // Debugging basics - using print statements
  print('Debug: Variable a = $a, Variable b = $b');

  // You can also debug in IDEs with breakpoints and step-through

  // Sample function to demonstrate debugging
  int multiply(int x, int y) {
    return x * y;
  }

  int product = multiply(a, b);
  print('Product: $product');
}
