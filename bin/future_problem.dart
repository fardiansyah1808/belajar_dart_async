Future<String> firstName() async {
  return "Fardi";
}

Future<String> lastName() async {
  return "Ansyah";
}

Future<String> sayHello(String name) async {
  return "Hello $name";
  // throw Exception("Ups"); //untuk catch
}

void main() {
  firstName().then((firstName) {
    return lastName().then((lastName) {
      var fullName = "$firstName $lastName";
      return sayHello(fullName);
    });
  }).then((value) {
    print(value);
  });

  print("Done!");
}
