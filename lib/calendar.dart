import 'package:flutter/material.dart';

class Calendar {
  DateTime timesStart;
  DateTime timesEnd;
  String subjectName;
  String? locations;
  Color background;
  bool isAllDay;
  Calendar({
    required this.timesStart,
    required this.timesEnd,
    required this.subjectName,
    required this.locations,
    required this.background,
    required this.isAllDay,
  });
}
