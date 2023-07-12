import 'package:attendance_app/features/home/widgets/task_item.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TaskItem(
          title: 'title',
          desc: 'Lorem aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ),
        SizedBox(
          height: 10,
        ),
        TaskItem(
          title: 'title',
          desc: 'Lorem aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ),
        SizedBox(
          height: 10,
        ),
        TaskItem(
          title: 'title',
          desc: 'Lorem aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ),
      ],
    );
  }
}
