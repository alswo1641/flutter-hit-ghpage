import 'package:get/get.dart';

class BoardController extends GetxController {
  var todoTasks = <Task>[].obs;
  var urgentTasks = <Task>[].obs;
  var inProgressTasks = <Task>[].obs;
  var doneTasks = <Task>[].obs;

  void addTask(Task task) {
    todoTasks.add(task);
  }

  void moveTask(Task task, RxList<Task> targetList) {
    if (todoTasks.contains(task)) {
      todoTasks.remove(task);
    } else if (urgentTasks.contains(task)) {
      urgentTasks.remove(task);
    } else if (inProgressTasks.contains(task)) {
      inProgressTasks.remove(task);
    } else if (doneTasks.contains(task)) {
      doneTasks.remove(task);
    }

    targetList.add(task);
  }
}

class Task {
  final String title;
  final String assignee;
  final String content;
  final DateTime date;

  Task({
    required this.title,
    required this.assignee,
    required this.content,
    required this.date,
  });
}
