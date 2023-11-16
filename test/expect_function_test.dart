import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String sayHello(String name) {
  return "Hello $name";
}

void main() {
  test("Test sayHello()", () {
    var response = sayHello("Fardi");
    expect(response, equals("Hello Fardi"));

    // expect(response, "Hello Dart");
    //error test karena value response yang di expect hello dart
  });
}
