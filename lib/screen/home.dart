import 'package:flutter/material.dart';
import 'package:namdz/global.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../calendar.dart';
import '../calendar_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Calendar> getDataSource() {
    final List<Calendar> calendars = <Calendar>[];
    final DateTime today = DateTime.now();
    final DateTime startTime1 =
        DateTime(today.year, today.month, today.day, 7, 0, 0);
    final DateTime startTime2 =
        DateTime(today.year, today.month, today.day, 8, 0, 0);
    final DateTime startTime3 =
        DateTime(today.year, today.month, today.day, 13, 0, 0);
    final DateTime endTime1 = startTime1.add(const Duration(hours: 3));
    final DateTime endTime2 = startTime2.add(const Duration(hours: 3));
    final DateTime endTime3 = startTime3.add(const Duration(hours: 3));
    calendars.add(Calendar(
        timesStart: startTime1,
        timesEnd: endTime1,
        subjectName: 'Lập trình di động ',
        locations: 'c1.101',
        background: Color(0xff0f8644),
        isAllDay: false));
    calendars.add(Calendar(
        timesStart: startTime2,
        timesEnd: endTime2,
        subjectName: 'Cơ sở dữ liệu',
        locations: 'c2.101',
        background: Color(0xff0f8644),
        isAllDay: false));
    calendars.add(Calendar(
        timesStart: startTime3,
        timesEnd: endTime3,
        subjectName: 'Công nghệ phần mềm',
        locations: 'c5.101',
        background: Color(0xff0f8644),
        isAllDay: false));
    return calendars;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SfCalendar(
            view: CalendarView.month,
            cellBorderColor: Colors.transparent,
            dataSource: CalendarData(getCalender),
            monthViewSettings: MonthViewSettings(
              appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
              showAgenda: true,
            ),
            blackoutDates: [],
          ),
        ),
      ],
    );
  }
}
