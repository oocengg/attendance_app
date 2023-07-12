import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: FloatingActionButton.small(
          heroTag: "backDetailScreen",
          elevation: 0,
          backgroundColor: Colors.black12,
          highlightElevation: 0,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: const CircleBorder(),
          disabledElevation: 0,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(FluentIcons.chevron_left_16_regular,
              size: 30, color: Colors.white),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('test'),
          ],
        ),
      ),
    );
  }
}
