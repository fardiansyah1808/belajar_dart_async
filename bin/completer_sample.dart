void longRunningTask(
    void Function(String) onDone, void Function(Object?) onError) {
  //sample library
  Future.delayed(Duration(seconds: 3))
      .onError((error, stackTrace) => onError(error))
      .then((value) => onDone("Task Complete"));
}

void main() {
  longRunningTask((p0) {
    print(p0.toUpperCase());
  }, (p0) {
    print(p0);
  });
}
