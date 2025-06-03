// 6. Collections in Dart
// command
// dart run 00_dart_basics/06_collections.dart
//

void main() {
  // ✅ Lists (Array-like)
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  fruits.add('Orange');
  fruits.remove('Banana');
  print("Fruits List: $fruits");
  for (var fruit in fruits) {
    print("Fruit: $fruit");
  }

  // ✅ Sets (Unique collection)
  Set<int> numbers = {1, 2, 3};
  numbers.add(2); // Duplicate - won't be added
  numbers.add(4);
  print("Numbers Set: $numbers");

  // ✅ Maps (Key-value pairs)
  Map<String, String> capitals = {
    'India': 'Delhi',
    'USA': 'Washington D.C.',
    'UK': 'London'
  };
  capitals['France'] = 'Paris';
  print("Capital of India: ${capitals['India']}");
  capitals.remove('USA');
  capitals.forEach((key, value) {
    print("$key → $value");
  });

  // ✅ Common Operations
  List<int> nums = [1, 2, 3];
  nums.addAll([4, 5]);
  nums.removeAt(0);
  nums.insert(1, 99);
  print("Nums List: $nums");

  // ✅ Collection If
  bool isWeekend = true;
  List<String> days = ['Monday', 'Tuesday', if (isWeekend) 'Sunday'];
  print("Days: $days");

  // ✅ Collection For
  List<int> squares = [for (var i = 1; i <= 5; i++) i * i];
  print("Squares: $squares");
}
