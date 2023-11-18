void longRunningStream(void Function(String) onNext,
    void Function(Error?) onError, void Function() onDone) {
  //sample library
  var listen = Stream.periodic(Duration(seconds: 1)).take(5).listen((event) {
    onNext("Fardi");
  });

  listen.onError((error) => onError(error));

  listen.onDone(() => onDone);
}

void main() {
  longRunningStream((data) {
    print(data);
  }, (error) {
    print(error);
  }, () {
    print("Done!");
  });
}
