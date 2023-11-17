Stream<String> names() {
  return Stream.fromIterable(["Fardi", "Anjayy", "Ansyah"]);
}

Future<String> fullName() async {
  String name = "";
  await for (String n in names()) {
    name += "$n ";
  }

  return name.trim();
}

void main() {
  fullName().then((value) {
    print(value);
  });

  print("Done!");
}
