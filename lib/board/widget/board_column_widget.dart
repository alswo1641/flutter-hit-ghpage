import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hit_project/board/widget/task_form_dialog_widget.dart';
import 'package:hit_project/common/layout/app_text.dart';
import 'package:hit_project/user/user_model.dart';
import 'package:intl/intl.dart';

class BoardColumnWidget extends StatelessWidget {
  final String title;
  final RxList<UserModel> tasks;
  final Function(UserModel, int) onAccept;
  final Function(UserModel) onMoveBack;
  final List<RxList<UserModel>> allTasks;

  BoardColumnWidget({
    required this.title,
    required this.tasks,
    required this.onAccept,
    required this.onMoveBack,
    required this.allTasks,
  });

  final TextEditingController _taskTitleController = TextEditingController();
  final RxBool isCreating = false.obs;
  final RxBool isButtonEnabled = false.obs;

  void _showTaskFormDialog(BuildContext context, {UserModel? task}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return TaskFormDialog(
          initialTask: task,
          onSave: (title, assignee, content, date) {
            if (task == null) {
              tasks.add(UserModel(
                title: title,
                assignee: assignee,
                content: content,
                date: date,
              ));
            } else {
              final index = tasks.indexOf(task);
              tasks[index] = UserModel(
                title: title,
                assignee: assignee,
                content: content,
                date: date,
              );
            }
          },
        );
      },
    );
  }

  void _deleteTask(UserModel task) {
    tasks.remove(task);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isCreating.value) {
          isCreating.value = false;
          _taskTitleController.clear();
        }
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(title, style: AppTextTheme.black14m),
                const Spacer(),
                TextButton.icon(
                  onPressed: () => _showTaskFormDialog(context),
                  icon: const Icon(Icons.add, color: Colors.blue),
                  label: const Text('일정 추가', style: AppTextTheme.skyBlue14m),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: DragTarget<UserModel>(
                onWillAcceptWithDetails: (data) => true,
                onAcceptWithDetails: (details) {
                  final task = details.data;
                  final fromList = allTasks.firstWhere((list) => list.contains(task));
                  final toList = tasks;
                  final fromIndex = fromList.indexOf(task);
                  final toIndex = _calculateDropIndex(context, details.offset);

                  if (fromList != toList) {
                    fromList.remove(task);
                    toList.insert(toIndex.clamp(0, toList.length), task);
                    onAccept(task, toIndex);
                  } else {
                    fromList.remove(task);
                    toList.insert(toIndex.clamp(0, toList.length), task);
                    onAccept(task, toIndex);
                  }
                },
                builder: (context, candidateData, rejectedData) {
                  return Obx(() {
                    return tasks.isEmpty
                        ? const Center(child: Text('정보 없음', style: TextStyle(color: Colors.grey)))
                        : ListView.builder(
                            itemCount: tasks.length,
                            itemBuilder: (context, index) {
                              final task = tasks[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    _showTaskFormDialog(context, task: task);
                                  },
                                  child: Draggable<UserModel>(
                                    data: task,
                                    feedback: Material(
                                      child: SizedBox(
                                        height: 180,
                                        width: MediaQuery.of(context).size.width * 0.2,
                                        child: Card(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(
                                                        task.title.isNotEmpty ? task.title : '제목 정보 없음',
                                                        style: AppTextTheme.black14m,
                                                      ),
                                                    ),
                                                  ),
                                                  PopupMenuButton<String>(
                                                    onSelected: (value) {
                                                      if (value == 'edit') {
                                                        _showTaskFormDialog(context, task: task);
                                                      } else if (value == 'delete') {
                                                        _deleteTask(task);
                                                      }
                                                    },
                                                    itemBuilder: (BuildContext context) {
                                                      return [
                                                        const PopupMenuItem(
                                                          value: 'edit',
                                                          child: Text('수정'),
                                                        ),
                                                        const PopupMenuItem(
                                                          value: 'delete',
                                                          child: Text('삭제'),
                                                        ),
                                                      ];
                                                    },
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  task.content.isNotEmpty ? '내용: ${task.content}' : '내용 정보 없음',
                                                  style: const TextStyle(color: Colors.grey),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  task.date != null
                                                      ? '날짜: ${DateFormat('yyyy-MM-dd').format(task.date)}'
                                                      : '날짜 정보 없음',
                                                  style: const TextStyle(color: Colors.grey),
                                                ),
                                              ),
                                              const Spacer(),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    task.assignee.isNotEmpty ? '담당자: ${task.assignee}' : '담당자 정보 없음',
                                                    style: const TextStyle(color: Colors.grey),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    childWhenDragging: Container(),
                                    onDragEnd: (details) {
                                      if (!details.wasAccepted) {
                                        onMoveBack(task);
                                      }
                                    },
                                    child: SizedBox(
                                      height: 180,
                                      child: Card(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Text(task.title.isNotEmpty ? task.title : '제목 정보 없음',
                                                        style: AppTextTheme.black14m),
                                                  ),
                                                ),
                                                PopupMenuButton<String>(
                                                  onSelected: (value) {
                                                    if (value == 'edit') {
                                                      _showTaskFormDialog(context, task: task);
                                                    } else if (value == 'delete') {
                                                      _deleteTask(task);
                                                    }
                                                  },
                                                  itemBuilder: (BuildContext context) {
                                                    return [
                                                      const PopupMenuItem(
                                                        value: 'edit',
                                                        child: Text('수정'),
                                                      ),
                                                      const PopupMenuItem(
                                                        value: 'delete',
                                                        child: Text('삭제'),
                                                      ),
                                                    ];
                                                  },
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(task.content.isNotEmpty ? '내용: ${task.content}' : '내용 정보 없음',
                                                  style: AppTextTheme.grey13m),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                                                  task.date != null
                                                      ? '날짜: ${DateFormat('yyyy-MM-dd').format(task.date)}'
                                                      : '날짜 정보 없음',
                                                  style: AppTextTheme.grey13m),
                                            ),
                                            const Spacer(),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                    task.assignee.isNotEmpty ? '담당자: ${task.assignee}' : '담당자 정보 없음',
                                                    style: AppTextTheme.grey13m),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _calculateDropIndex(BuildContext context, Offset dropOffset) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    double localY = renderBox.globalToLocal(dropOffset).dy;
    int newIndex = (localY ~/ 100).clamp(0, tasks.length);
    return newIndex;
  }
}
