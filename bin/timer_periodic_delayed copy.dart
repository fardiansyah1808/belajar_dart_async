import 'dart:async';

void main() {
  Timer.periodic(Duration(seconds: 1), (timer) {
    print("Timer Periodic ke ${timer.tick}");
    if (timer.tick >= 10) {
      timer.cancel();
    }
  });
  print("Done!");
}
