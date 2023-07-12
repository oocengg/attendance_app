import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class AttendanceWidget extends StatelessWidget {
  const AttendanceWidget({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Halo, Selamat Pagi!',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Text('Anda belum melakukan absen hari ini.'),
                  // const Text(
                  //     'Anda telah melakukan absen hari ini pada pukul 07.50 AM'),
                ],
              ),
            ),
            const Icon(
              FluentIcons.checkmark_circle_20_filled,
              color: Colors.indigo,
              size: 50,
            ),
            // TextButton(
            //   style: TextButton.styleFrom(
            //     backgroundColor: Colors.indigo,
            //   ),
            //   onPressed: () {},
            //   child: Text(
            //     'Absen',
            //     style: Theme.of(context).textTheme.titleMedium!.copyWith(
            //         fontWeight: FontWeight.normal, color: Colors.white),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
