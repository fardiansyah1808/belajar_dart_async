import 'package:test/test.dart';

void main() {
  test("Stream Test", () {
    final stream = Stream.periodic(Duration(seconds: 1), (i) => i + 1).take(5);
    expect(
        stream,
        emitsInOrder([
          emits(1),
          emits(2),
          emits(3),
          emits(4),
          emits(5),
        ]));
  });
}
