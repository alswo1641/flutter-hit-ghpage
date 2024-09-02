import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hit_project/board/widget/board_column_widget.dart';
import 'package:hit_project/user/user_model.dart';

class BoardMainPage extends StatelessWidget {
  final RxList<UserModel> todoTasks = <UserModel>[].obs;
  final RxList<UserModel> urgentTasks = <UserModel>[].obs;
  final RxList<UserModel> inProgressTasks = <UserModel>[].obs;
  final RxList<UserModel> completedTasks = <UserModel>[].obs;

  BoardMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RxList<UserModel>> allTasks = [todoTasks, urgentTasks, inProgressTasks, completedTasks];

    todoTasks.addAll([
      UserModel(
        title: "월요일 주간 회의건",
        assignee: "권민재",
        content: "개발주간회의",
        date: DateTime.now().add(const Duration(days: 1)),
      ),
      UserModel(
        title: "flutter 테스트",
        assignee: "김민수",
        content: "플러터 개발 마무리 총 테스트입니다.",
        date: DateTime.now().add(const Duration(days: 2)),
      ),
    ]);

    urgentTasks.addAll([
      UserModel(
        title: "앱등록",
        assignee: "박수진",
        content: "테스트플라이트 등록 및 앱스토어 등록 할예정입니다.",
        date: DateTime.now().add(const Duration(days: 3)),
      ),
    ]);

    inProgressTasks.addAll([
      UserModel(
        title: "마무리 개발",
        assignee: "권민재",
        content: "예외처리 및 디자인 수정",
        date: DateTime.now().add(const Duration(days: 2)),
      ),
    ]);

    completedTasks.addAll([
      UserModel(
        title: "면접합격",
        assignee: "권민재",
        content: "잘부탁드립니다.",
        date: DateTime.now().add(const Duration(days: 3)),
      ),
    ]);

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
