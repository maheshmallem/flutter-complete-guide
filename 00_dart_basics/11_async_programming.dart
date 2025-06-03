import 'dart:async';

// command
// dart run 00_dart_basics/11_async_programming.dart
//

void main() async {
  print('Start async programming demo.');

  // Future with async-await
  String data = await fetchData();
  print('Data received: $data');

  // Using then, catchError, whenComplete
  fetchData()
      .then((value) => print('Then received: $value'))
      .catchError((error) => print('Caught error: $error'))
      .whenComplete(() => print('Future is complete.'));

  // Streams example
  print('Starting stream example:');
  await for (var value in numberStream(5)) {
    print('Stream value: $value');
  }

  print('Async programming demo ended.');
}

// Simulate fetching data with a delay using Future
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  // Uncomment below line to simulate an error
  // throw Exception('Failed to fetch data');
  return 'Hello from Future!';
}

// Stream that emits numbers 1 to n every 500ms
Stream<int> numberStream(int n) async* {
  for (int i = 1; i <= n; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}
