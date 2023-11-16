Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    // return "Sudah pasti $name yah guys!";
    return Future.error(Exception("Ea gagal yah?"));
  });
}

void main() {
  sayHello("Done")
      .then((value) => print(value))
      .catchError((error) => print("Error with message ${error.message}"));
  print("Done gak bang?");
}
