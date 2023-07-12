import 'package:attendance_app/features/attendance/widgets/attendance_item.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Attendance Report',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: IconButton(
          icon: const Icon(
            FluentIcons.chevron_left_20_regular,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: const [
            AttendanceItem(
              attendance: 'Hadir',
              date: '13 Jul 2023',
              status: 'Ontime',
              time: '07.50',
            ),
            SizedBox(
              height: 10,
            ),
            AttendanceItem(
              attendance: 'Izin',
              date: '12 Jul 2023',
              status: 'Ontime',
              time: '07.50',
            ),
            SizedBox(
              height: 10,
            ),
            AttendanceItem(
              attendance: 'Alpa',
              date: '11 Jul 2023',
              status: 'Ontime',
              time: '07.50',
            ),
            SizedBox(
              height: 10,
            ),
            AttendanceItem(
              attendance: 'Hadir',
              date: '10 Jul 2023',
              status: 'Ontime',
              time: '07.50',
            ),
          ],
        ),
      ),
    );
  }
}
