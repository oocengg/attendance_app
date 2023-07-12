import 'package:attendance_app/features/home/widgets/heading_widget.dart';
import 'package:attendance_app/features/home/widgets/menu_widget.dart';
import 'package:attendance_app/features/home/widgets/task_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(
          children: [
            const HeadingWidget(),
            const SizedBox(
              height: 24,
            ),
            const MenuWidget(),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Your Task :',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(
              height: 14,
            ),
            const TaskWidget(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
