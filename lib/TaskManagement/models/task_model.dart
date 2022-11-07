class Task {
  late String taskName;
  late bool completed;

  Task(this.taskName, this.completed);

  Task.fromMap(Map<String, dynamic> map) {
    this.taskName = map['taskName'] ?? '';
    this.completed = (map['isComplete'] ?? 0) == 1 ? true : false;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taskName': taskName,
      'isComplete': completed ? 1 : 0,
    };
  }
}
