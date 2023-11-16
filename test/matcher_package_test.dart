import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String sayHello(String name) {
  return "Hello $name";
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test("Test sayHello() with Matcher", () {
    var response = sayHello("Fardi");
    expect(response, endsWith("Fardi"));
    expect(response, startsWith("Hello"));
    expect(response, equalsIgnoringCase("hello fardi"));
    expect(response, isA<String>());
  });

  test("Test sum() a, b with Matcher", () {
    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(10));
  });
}
