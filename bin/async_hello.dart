Future<String> sayHello(String name) async {
  return "Hello $name";
}

void main() {
  sayHello("Fardi").then((String message) {
    print(message);
  });
  print("Done!");
}
