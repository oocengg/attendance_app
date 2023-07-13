import 'package:attendance_app/features/dashboard/provider/dashboard_provider.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(
        builder: (context, dashboardProvider, _) {
      return Scaffold(
        body: dashboardProvider.pages[dashboardProvider.selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 9),
              ),
            ],
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            backgroundColor: Colors.white,
            color: Colors.indigo,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.indigo,
            padding: const EdgeInsets.all(20),
            gap: 15,
            tabs: const [
              GButton(
                icon: FluentIcons.home_20_filled,
                text: 'Home',
              ),
              GButton(
                icon: FluentIcons.book_20_filled,
                text: 'Report',
              ),
            ],
            onTabChange: (index) =>
                dashboardProvider.setSelectedIndex(context, index),
          ),
        ),
      );
    });
  }
}
