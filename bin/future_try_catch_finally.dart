Future<String> sayHello(String name) {
  // return Future.value("Hello $name");
  return Future.error(Exception("Ups"));
}

void main() {
  sayHello("Fardi")
      .then((value) => print(value))
      .catchError((error) => print("Error with message ${error.message}"))
      .whenComplete(() => print("All Done"));
  print("Done!");
}
