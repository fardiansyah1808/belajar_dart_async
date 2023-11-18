import 'dart:io';

Future<String> block() async {
  sleep(Duration(seconds: 2));
  return "Block / Sleep";
}

void main() {
  block().then((value) {
    print(value);
  });
  print("Done!");
}
