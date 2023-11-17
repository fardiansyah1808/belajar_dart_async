import 'dart:async';

import 'stream.dart';

void main() {
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((event) {
    print(event);
  });

  listen.onData((data) {
    print("Stream Subscription $data");
  });

  listen.onDone(() {
    print("Stream Subscription is Done!");
  });

  print("Done!");
}
