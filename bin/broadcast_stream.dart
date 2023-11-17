Stream<int> numbers() {
  return Stream.periodic(Duration(seconds: 1), (i) => i + 1);
}

void main() {
  Stream<int> numberStream = numbers();
  Stream<int> broadcastStream = numberStream.asBroadcastStream().take(10);

  // numberStream.listen((event) {
  //   print(event);
  // });
  broadcastStream.listen((event) {
    print(event);
  });

  print("Done!");
}
