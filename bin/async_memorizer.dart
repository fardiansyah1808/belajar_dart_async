import 'package:async/async.dart';

Future<String> getData() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    print("Calculated Data");
    return 'You Got the Data';
  });
}

void main() async {
  final asyncMemoizer = AsyncMemoizer<String>();

  final result1 = await asyncMemoizer.runOnce(() => getData());
  print(result1);

  final result2 = await asyncMemoizer.runOnce(() => getData());
  print(result2);
}
