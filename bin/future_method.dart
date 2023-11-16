Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    return "Sudah pasti $name yah guys!";
  });
}

void main() {
  sayHello("Done").then((value) => print(value));
  print("Done gak bang?");
}
