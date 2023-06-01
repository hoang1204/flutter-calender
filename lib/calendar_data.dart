import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'dart:ui';

import 'calendar.dart';

class CalendarData extends CalendarDataSource{
  CalendarData(List<Calendar> source){
    appointments = source;
  }
  @override
  DateTime getStartTime(int index) {

    return appointments![index].timesStart;
  }
  @override
  DateTime getEndTime(int index) {
  
    return appointments![index].timesEnd;
  }
  @override
  String? getLocation(int index) {
    
    return appointments![index].locations;
  }
  @override
  String getSubject(int index) {
   
    return appointments![index].subjectName;
  }
  @override
  Color getColor(int index) {

    return appointments![index].background;
  }
  @override
  bool isAllDay(int index) {

    return appointments![index].isAllDay;
  }
}

  

