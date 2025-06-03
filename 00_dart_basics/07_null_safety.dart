// 7. Null Safety in Dart

// command
// dart run 00_dart_basics/07_null_safety.dart
//

void main() {
  // ✅ Non-nullable variable
  String name = "Mahesh";
  print("Name: $name");

  // ✅ Nullable variable
  String? nickname;
  print("Nickname (nullable): $nickname"); // Output: null

  // ✅ Null assertion operator (!)
  nickname = "Mahi";
  print("Length of nickname: ${nickname!.length}"); // Forces access

  // ✅ Late variable (assigned later, guaranteed non-null before use)
  late String title;
  title = "Flutter Developer";
  print("Title: $title");

  // ✅ Null-aware operators revisited

  // ?? operator - provide default value if null
  String? city;
  String currentCity = city ?? "Hyderabad";
  print("Current City: $currentCity");

  // ?.
  int? length = nickname?.length;
  print("Nickname Length (null-safe): $length");

  // ??= assign if null
  String? status;
  status ??= "Active";
  print("Status: $status");
}
