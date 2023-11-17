import 'dart:async';

void main() {
  Timer(Duration(seconds: 2), () {
    print("Hello Dart Async Timer");
  });
  print("Done!");
}
