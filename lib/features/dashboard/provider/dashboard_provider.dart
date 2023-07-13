import 'package:attendance_app/features/home/view/home_screen.dart';
import 'package:attendance_app/features/report/view/report_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class DashboardProvider with ChangeNotifier {
  int selectedIndex = 0;

  final List<IconData> icon = [
    FluentIcons.home_20_regular,
    FluentIcons.book_20_regular
  ];

  final List<Widget> pages = [
    const HomeScreen(),
    const ReportScreen(),
  ];

  void setSelectedIndex(BuildContext context, int index) {
    selectedIndex = index;

    notifyListeners();
  }
}
