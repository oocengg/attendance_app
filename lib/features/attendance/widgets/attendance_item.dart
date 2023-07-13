import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class AttendanceItem extends StatelessWidget {
  final String attendance;
  final String status;
  final String date;
  final String time;
  const AttendanceItem({
    super.key,
    required this.attendance,
    required this.status,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            attendance == 'Masuk'
                ? const Icon(
                    FluentIcons.chevron_circle_right_20_filled,
                    color: Colors.indigo,
                    size: 50,
                  )
                : attendance == 'Pulang'
                    ? const Icon(
                        FluentIcons.chevron_circle_left_20_filled,
                        color: Colors.indigo,
                        size: 50,
                      )
                    : const Icon(
                        FluentIcons.error_circle_20_filled,
                        color: Colors.indigo,
                        size: 50,
                      ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    attendance,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    date,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // const Text(
                  //     'Anda telah melakukan absen hari ini pada pukul 07.50 AM'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    time,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    status,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  // const Text(
                  //     'Anda telah melakukan absen hari ini pada pukul 07.50 AM'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
