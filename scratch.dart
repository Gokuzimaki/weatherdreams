void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String taskOut = await task2();
  task3(taskOut);
}

void task1() {
  print('Task 1 Complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  late String returnData;
  await Future.delayed(threeSeconds, () {
    returnData = "Task 2 Ops";
    print('Task 2 Complete');
  });
  return returnData;
}

void task3(String taskData) {
  print('Task 3 Complete $taskData');
}
