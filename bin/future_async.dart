Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Done!");
  });
}

void main() {
  hello();
  print("Done gak bang?");
}
