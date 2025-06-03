// 9. Enums in Dart

// command
// dart run 00_dart_basics/09_enums.dart
//

void main() {
  // Using enum
  Status currentStatus = Status.loading;
  print("Current status: $currentStatus");

  // Using enum in switch-case
  switch (currentStatus) {
    case Status.loading:
      print("Loading data...");
      break;
    case Status.success:
      print("Data loaded successfully!");
      break;
    case Status.error:
      print("Error loading data.");
      break;
  }

  // Using enums with conditions
  if (currentStatus == Status.loading) {
    print("Please wait while we load your data.");
  }

  // Enum with values example
  print("Selected day: ${Days.monday.name} with index ${Days.monday.index}");
}

// Defining a simple enum
enum Status { loading, success, error }

// Enum with specific values (enhanced enum in Dart 2.17+)
enum Days {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}
