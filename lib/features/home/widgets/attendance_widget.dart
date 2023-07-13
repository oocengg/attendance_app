import 'package:attendance_app/features/home/provider/attendance_provider.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AttendanceWidget extends StatelessWidget {
  const AttendanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AttendanceProvider>(
        builder: (context, attendanceProvider, _) {
      return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.width * 0.45,
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
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              top: 0,
              left: attendanceProvider.absenStatus == 'Pulang'
                  ? 0
                  : MediaQuery.of(context).size.width * 0.45,
              right: attendanceProvider.absenStatus == 'Pulang'
                  ? MediaQuery.of(context).size.width * 0.45
                  : 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.width * 0.45,
                width: MediaQuery.of(context).size.width * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      attendanceProvider.absenStatus == 'Masuk'
                          ? 'Absen Masuk'
                          : attendanceProvider.absenStatus == 'Selesai'
                              ? 'Hore!'
                              : 'Absen Pulang',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo,
                              ),
                    ),
                    Text(
                      attendanceProvider.absenStatus == 'Masuk'
                          ? 'Kamu belum melakukan absen masuk'
                          : attendanceProvider.absenStatus == 'Selesai'
                              ? 'Absen kamu telah selesai'
                              : 'Kamu belum melakukan absen pulang',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Colors.indigo,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              top: 0,
              left: attendanceProvider.absenStatus == 'Pulang'
                  ? MediaQuery.of(context).size.width * 0.45
                  : 0,
              right: attendanceProvider.absenStatus == 'Pulang'
                  ? 0
                  : MediaQuery.of(context).size.width * 0.45,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.45,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '07.59 AM',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                    ),
                    Text(
                      '12 Jul 2023',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                    ),
                    attendanceProvider.absenStatus == 'Selesai'
                        ? IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              attendanceProvider.updateAbsen();
                            },
                            icon: const Icon(
                              FluentIcons.checkmark_circle_20_filled,
                              size: 60,
                              color: Colors.white,
                            ),
                          )
                        : TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              attendanceProvider.updateAbsen();
                            },
                            child: Text(
                              'Absen',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.indigo),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
