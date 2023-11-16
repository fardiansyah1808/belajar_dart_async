@Tags(["fardi", "anjayy"])

import 'package:test/scaffolding.dart';

int sum(int a, int b) => a + b;

void main() {
  test("Test First", () {
    print("First");
  }, tags: ["first"]);
  test("Test Second", () {
    print("Second");
  }, tags: ["second"]);
}
