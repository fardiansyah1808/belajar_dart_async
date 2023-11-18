import 'package:async/async.dart';

Future<String> getData() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    print("Calculated Data");
    return 'You Got the Data';
  });
}

void main() async {
  final asyncCache = AsyncCache<String>(Duration(seconds: 10));

  final result1 = await asyncCache.fetch(() => getData());
  print(result1);

  final result2 = await asyncCache.fetch(() => getData());
  print(result2);
}
