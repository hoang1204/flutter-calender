import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namdz/model/account.dart';

import 'calendar.dart';
import 'model/calendermodel.dart';

Account? accountInstane;
List<Calendar> getCalender = [];
List<Calendermodel> getCalenderFromDTB = [];

final lichInstane =
    StateNotifierProvider<LoadCalender, List<Calendermodel>>((_) {
  return LoadCalender(null);
});
