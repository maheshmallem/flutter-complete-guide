// 10. Exception Handling in Dart

// command
// dart run 00_dart_basics/10_exception_handling.dart
//

void main() {
  try {
    int result = divide(10, 0);
    print("Result: $result");
  } catch (e) {
    print("Caught an exception: $e");
  } finally {
    print("This block always runs (cleanup, closing resources).");
  }

  // Throwing custom exception
  try {
    checkAge(15);
  } catch (e) {
    print("Exception caught: $e");
  }
}

// Function that throws an exception if dividing by zero
int divide(int a, int b) {
  if (b == 0) {
    throw IntegerDivisionByZeroException();
  }
  return a ~/ b;
}

// Custom Exception class
class AgeException implements Exception {
  String cause;
  AgeException(this.cause);

  @override
  String toString() => "AgeException: $cause";
}

// Function that throws a custom exception
void checkAge(int age) {
  if (age < 18) {
    throw AgeException("Age must be at least 18.");
  } else {
    print("Age is valid.");
  }
}
