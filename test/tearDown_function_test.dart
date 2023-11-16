import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = "Fardi";

  setUp(() {
    data = "Fardi";
  });

  tearDown(() {
    print(data);
  });

  group("String", () {
    test("String first", () {
      data = "$data Ansyah";
      expect(data, equals("Fardi Ansyah"));
    });
    test("String second", () {
      data = "$data Anjayy";
      expect(data, equals("Fardi Anjayy"));
    });
  });
}
