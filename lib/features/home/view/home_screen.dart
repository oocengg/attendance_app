import 'package:attendance_app/features/attendance/widgets/attendance_item.dart';
import 'package:attendance_app/features/home/widgets/attendance_widget.dart';
import 'package:attendance_app/features/home/widgets/heading_widget.dart';
// import 'package:attendance_app/features/home/widgets/menu_widget.dart';
import 'package:attendance_app/features/home/widgets/task_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.indigo,
        child: const Icon(
          FluentIcons.add_20_regular,
          color: Colors.white,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Form(
                // key: ,
                child: AlertDialog(
                  backgroundColor: Colors.white,
                  title: Text(
                    'Tambahkan kegiatanmu hari ini',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  content: TextFormField(
                    // controller: provider.descriptionController,
                    maxLines: 5,
                    // maxLength: 100,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      filled: true,
                      // counterStyle: const TextStyle(color: neutral),
                      fillColor: Colors.indigo.withOpacity(0.1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      hintText: 'Masukkan log book harian kamu',
                      hintStyle: ThemeData().textTheme.bodyMedium!.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    // validator: (value) => provider.validateDesc(value),
                  ),
                  actions: <Widget>[
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(
                            Colors.red.withOpacity(0.1)),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Batal',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.red,
                            ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.indigo,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Simpan',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: ListView(
          shrinkWrap: true,
          children: [
            const HeadingWidget(),
            const SizedBox(
              height: 24,
            ),
            AttendanceWidget(),
            const SizedBox(
              height: 24,
            ),

            Text(
              'Today Attendance :',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            const AttendanceItem(
              attendance: 'Masuk',
              status: 'Ontime',
              date: '12 Jul 2023',
              time: '07.59 AM',
            ),
            const SizedBox(
              height: 10,
            ),
            const AttendanceItem(
              attendance: 'Pulang',
              status: 'Ontime',
              date: '12 Jul 2023',
              time: '04.00 PM',
            ),
            const SizedBox(
              height: 24,
            ),
            // const SizedBox(
            //   height: 24,
            // ),
            // const MenuWidget(),
            // const SizedBox(
            //   height: 24,
            // ),
            // Text(
            //   'Your Task :',
            //   style: Theme.of(context).textTheme.titleLarge!.copyWith(
            //         fontWeight: FontWeight.w500,
            //       ),
            // ),
            Text(
              'Today Log Book :',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
