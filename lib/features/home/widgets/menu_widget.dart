import 'package:attendance_app/features/attendance/view/attendance_screen.dart';
import 'package:attendance_app/features/home/widgets/menu_item.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: <Widget>[
        MenuItem(
          title: 'Attendance',
          icon: FluentIcons.calendar_ltr_20_regular,
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const AttendanceScreen(),
              ),
            );
          },
        ),
        MenuItem(
          title: 'Log Book Report',
          icon: FluentIcons.book_20_regular,
          onTap: () {},
        ),
        MenuItem(
          title: 'Other',
          icon: FluentIcons.add_20_regular,
          onTap: () {},
        ),
      ],
    );
  }
}
