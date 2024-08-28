import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hit_project/board/controller/board_controller.dart';
import 'package:hit_project/board/widget/board_column_widget.dart';

class BoardMainPage extends StatelessWidget {
  final RxList<Task> todoTasks = <Task>[].obs;
  final RxList<Task> urgentTasks = <Task>[].obs;
  final RxList<Task> inProgressTasks = <Task>[].obs;
  final RxList<Task> completedTasks = <Task>[].obs;

  @override
  Widget build(BuildContext context) {
    final List<RxList<Task>> allTasks = [todoTasks, urgentTasks, inProgressTasks, completedTasks];

    return Scaffold(
      appBar: AppBar(title: const Text('Just To Do IT')),
      body: Row(
        children: [
          Expanded(
            child: BoardColumnWidget(
              title: '할일',
              tasks: todoTasks,
              onAccept: (task, index) {},
              onMoveBack: (task) {},
              allTasks: allTasks,
            ),
          ),
          Expanded(
            child: BoardColumnWidget(
              title: '급한일',
              tasks: urgentTasks,
              onAccept: (task, index) {},
              onMoveBack: (task) {},
              allTasks: allTasks,
            ),
          ),
          Expanded(
            child: BoardColumnWidget(
              title: '진행중',
              tasks: inProgressTasks,
              onAccept: (task, index) {},
              onMoveBack: (task) {},
              allTasks: allTasks,
            ),
          ),
          Expanded(
            child: BoardColumnWidget(
              title: '완료한 일',
              tasks: completedTasks,
              onAccept: (task, index) {},
              onMoveBack: (task) {},
              allTasks: allTasks,
            ),
          ),
        ],
      ),
    );
  }
}
