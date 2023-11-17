import 'dart:async';

Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 1), (i) {
    if (i % 2 == 0) {
      return '$i : Genap';
    } else {
      return '$i : ganjil';
    }
  });
}

void main() {
  Stream<String> flow = stream();
  // StreamSubscription<String> listen = flow.listen((event) {
  //   print(event);
  // });
  flow.listen((event) {
    print(event);
  });
  //error jika 2 listen stream
  // StreamSubscription<String> listen2 = flow.listen((event) {
  //   print(event);
  // });
  print("Done ya guys!");
}
