// Import core Dart library
import 'dart:math';

// Import external package (http package must be added in pubspec.yaml)
// import 'package:http/http.dart' as http;

// Import your own library (assuming you create 'my_utils.dart' in the same folder)

import 'my_utils.dart';

void main() {
  // Using core library
  var randomNumber = Random().nextInt(100);
  print('Random number from dart:math: $randomNumber');

  // Using own library function
  print('Greeting from my_utils: ${greet('Mahesh')}');

  // Using external package (http)
  fetchGoogleHomepage();
}

// Example function using http package to fetch Google's homepage
void fetchGoogleHomepage() async {
  var url = Uri.parse('https://www.google.com');
  // var response = await http.get(url);
  // print('Google homepage status code: ${response.statusCode}');
}
