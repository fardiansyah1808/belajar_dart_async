import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = "Fardi";

  setUpAll(() {
    print("Start the Unit Test");
  });

  setUp(() {
    data = "Fardi";
  });

  tearDownAll(() {
    print("End the Unit Test");
  });

  tearDown(() {
    print(data);
  });

  group("String", () {
    test("String first", () {
      data = "$data Ansyah";
      expect(data, "Fardi Ansyah");
    });
    test("String second", () {
      data = "$data Anjayy";
      expect(data, "Fardi Anjayy");
    });
  });
}
