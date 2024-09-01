import 'package:get/get.dart';
import 'package:hit_project/user/user_model.dart';

class BoardController extends GetxController {
  var todoTasks = <UserModel>[].obs;
  var urgentTasks = <UserModel>[].obs;
  var inProgressTasks = <UserModel>[].obs;
  var doneTasks = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    todoTasks.addAll(dummyTasks);
  }

  void addTask(UserModel task) {
    todoTasks.add(task);
  }

  void moveTask(UserModel task, RxList<UserModel> targetList) {
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

final List<UserModel> dummyTasks = [
  UserModel(
    title: "월요일 주간 회의건",
    assignee: "권민재",
    content: "개발주간회의",
    date: DateTime.now().add(Duration(days: 1)),
  ),
  UserModel(
    title: "Task 2",
    assignee: "Jane Smith",
    content: "Design the new user interface",
    date: DateTime.now().add(Duration(days: 2)),
  ),
  UserModel(
    title: "Task 3",
    assignee: "Alice Johnson",
    content: "Fix the reported bugs",
    date: DateTime.now().add(Duration(days: 3)),
  ),
];
