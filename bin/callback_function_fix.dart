import 'dart:async';

import 'callback_function_sample.dart';

Stream<String> runLongRunningStream() {
  StreamController<String> streamController = StreamController<String>();

  longRunningStream((event) {
    streamController.add(event);
  }, (error) {
    streamController.addError(error!);
  }, () {
    streamController.close();
  });
  return streamController.stream;
}

void main() {
  runLongRunningStream().listen((event) {
    print(event);
  });

  print("Done!");
}
