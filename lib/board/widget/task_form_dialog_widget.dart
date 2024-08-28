import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hit_project/board/controller/board_controller.dart';
import 'package:hit_project/common/layout/app_text.dart';
import 'package:intl/intl.dart';

class TaskFormDialog extends StatefulWidget {
  final Task? initialTask;
  final Function(String title, String assignee, String content, DateTime date) onSave;

  TaskFormDialog({this.initialTask, required this.onSave});

  @override
  _TaskFormDialogState createState() => _TaskFormDialogState();
}

class _TaskFormDialogState extends State<TaskFormDialog> {
  late TextEditingController _titleController;
  late TextEditingController _assigneeController;
  late TextEditingController _contentController;
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.initialTask?.title ?? '');
    _assigneeController = TextEditingController(text: widget.initialTask?.assignee ?? '');
    _contentController = TextEditingController(text: widget.initialTask?.content ?? '');
    _selectedDate = widget.initialTask?.date ?? DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = _selectedDate;
    await showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          color: CupertinoColors.white,
          child: Column(
            children: [
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: _selectedDate,
                  onDateTimeChanged: (DateTime newDate) {
                    pickedDate = newDate;
                  },
                ),
              ),
              CupertinoButton(
                child: const Text('확인', style: AppTextTheme.skyBlue14b),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(widget.initialTask == null ? '일정 추가' : '일정 수정'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: CupertinoTextField(
              controller: _titleController,
              placeholder: '제목',
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: CupertinoColors.separator),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: CupertinoTextField(
              controller: _assigneeController,
              placeholder: '담당자',
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: CupertinoColors.separator),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: CupertinoTextField(
              controller: _contentController,
              placeholder: '내용',
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: CupertinoColors.separator),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text('날짜: ${DateFormat('yyyy년 MM월 dd일').format(_selectedDate)}'),
              ),
              CupertinoButton(
                onPressed: () => _selectDate(context),
                child: const Text('날짜 선택', style: AppTextTheme.skyBlue14b),
              ),
            ],
          ),
        ],
      ),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('취소', style: AppTextTheme.skyBlue14b),
        ),
        CupertinoDialogAction(
          onPressed: () {
            widget.onSave(
              _titleController.text,
              _assigneeController.text,
              _contentController.text,
              _selectedDate,
            );
            Navigator.of(context).pop();
          },
          child: const Text('저장', style: AppTextTheme.skyBlue14b),
        ),
      ],
    );
  }
}
