// 4. Control Flow Statements
// Command
// dart run 00_dart_basics/04_control_flow_statements.dart
//
void main() {
  // --------------------------------------------
  // If-else
  // --------------------------------------------
  int age = 20;

  if (age >= 18) {
    print("You're an adult."); // ✅ Output
  } else {
    print("You're a minor.");
  }

  // --------------------------------------------
  // Switch-case
  // --------------------------------------------
  String grade = 'B';

  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good'); // ✅ Output
      break;
    case 'C':
      print('Fair');
      break;
    default:
      print('Invalid grade');
  }

  // --------------------------------------------
  // for loop
  // --------------------------------------------
  print('For Loop:');
  for (int i = 1; i <= 3; i++) {
    print('  Count: $i');
  }

  // --------------------------------------------
  // for-in loop
  // --------------------------------------------
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  print('For-in Loop:');
  for (var fruit in fruits) {
    print('  Fruit: $fruit');
  }

  // --------------------------------------------
  // while loop
  // --------------------------------------------
  int x = 0;
  print('While Loop:');
  while (x < 3) {
    print('  x: $x');
    x++;
  }

  // --------------------------------------------
  // do-while loop
  // --------------------------------------------
  int y = 0;
  print('Do-While Loop:');
  do {
    print('  y: $y');
    y++;
  } while (y < 3);

  // --------------------------------------------
  // break and continue
  // --------------------------------------------
  print('Break and Continue Example:');
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      print('  Skipping 3');
      continue;
    }
    if (i == 4) {
      print('  Breaking at 4');
      break;
    }
    print('  i: $i');
  }
}
