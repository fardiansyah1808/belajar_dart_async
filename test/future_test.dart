import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "Fardi Ansyah");
}

void main() {
  test("Future Matcher", () {
    final name = getName();
    expect(name, completion(equals("Fardi Ansyah")));
  });
  test('Future Test', () async {
    final name = await getName();
    expect(name, "Fardi Ansyah");
  });
}
