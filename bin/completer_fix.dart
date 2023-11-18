import 'dart:async';
import 'completer_sample.dart';

Future<String> runLongRunningTask() {
  Completer<String> completer = Completer();
  longRunningTask((data) {
    completer.complete(data);
  }, (err) {
    completer.completeError(err!);
  });
  return completer.future;
}

void main() {
  runLongRunningTask().then((value) {
    print(value);
  });
}
