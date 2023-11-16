import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

int sum(int a, int b) => a + b;

void main() {
  group("sum() with Group", () {
    test("sum first", () {
      expect(sum(3, 2), greaterThan(4));
    });
    test("sum second", () {
      expect(sum(15, -5), equals(10));
    }, onPlatform: {
      "windows": Skip("This test is not support on windows"),
    });
    test("sum third", () {
      expect(sum(1, 8), lessThan(10));
    });
  });
}
