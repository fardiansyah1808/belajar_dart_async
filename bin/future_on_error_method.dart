Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    // return "Sudah pasti $name yah guys!";
    throw Error();
  });
}

void main() {
  sayHello("Done")
      .onError((error, stackTrace) => "Ga done :(")
      .then((value) => print(value));
  print("Done gak bang?");
}
