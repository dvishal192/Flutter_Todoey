class Task {
  String? name = 'a';
  bool isDone = false;

  Task({required this.name, required this.isDone});

  void toggleDone() {
    isDone = !isDone;
  }
}
