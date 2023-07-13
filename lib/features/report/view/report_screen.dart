import 'package:attendance_app/core/extension/date_extension.dart';
import 'package:attendance_app/features/attendance/widgets/attendance_item.dart';
import 'package:attendance_app/features/home/widgets/task_widget.dart';
import 'package:attendance_app/features/report/provider/report_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Report Screen',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Colors.indigo,
                      ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.refresh,
                    color: Colors.indigo,
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 24,
            ),

            // Calendar Section
            Consumer<ReportProvider>(builder: (context, provider, _) {
              return TableCalendar(
                focusedDay: provider.selectedDate,
                firstDay: DateTime.utc(DateTime.now().year, 1, 1),
                lastDay: DateTime.utc(
                    DateTime.now().year, DateTime.now().month + 1, 0),
                calendarFormat: CalendarFormat.week,
                selectedDayPredicate: (day) {
                  return isSameDay(provider.selectedDate, day);
                },
                calendarBuilders: CalendarBuilders(
                  selectedBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  todayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.indigo.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.indigo,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                startingDayOfWeek: StartingDayOfWeek.monday,
                headerStyle: const HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  titleTextStyle: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  leftChevronIcon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.indigo,
                    size: 15,
                  ),
                  rightChevronIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.indigo,
                    size: 15,
                  ),
                ),
                onDaySelected: (selectedDay, focusedDay) {
                  provider.updateSelectedDate(selectedDay);
                },
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  todayTextStyle: const TextStyle(color: Colors.indigo),
                  weekendTextStyle: TextStyle(
                    color: Colors.indigo.withOpacity(0.5),
                  ),
                  defaultTextStyle:
                      TextStyle(color: Colors.indigo.withOpacity(0.5)),
                ),
                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle: TextStyle(color: Colors.indigo),
                  weekendStyle: TextStyle(color: Colors.indigo),
                ),
              );
            }),

            const SizedBox(
              height: 24,
            ),

            // Information Section
            Consumer<ReportProvider>(builder: (context, provider, _) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (provider.selectedDate.day == DateTime.now().day) ...[
                    Text(
                      'Today\'s Activity',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ] else ...[
                    Text(
                      provider.selectedDate.toHumanDateShort(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                  const SizedBox(
                    height: 20,
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
                    height: 20,
                  ),
                  Text(
                    'Your Log Book',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TaskWidget(),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
