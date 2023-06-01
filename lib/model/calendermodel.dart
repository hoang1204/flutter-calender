// To parse this JSON data, do
//
//     final calendermodel = calendermodelFromJson(jsonString);
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:namdz/calendar.dart';
import 'package:namdz/global.dart';
import 'dart:convert';

import 'package:namdz/http_services.dart';

part 'calendermodel.freezed.dart';
part 'calendermodel.g.dart';

List<Calendermodel> calenderFromJson(String str) => List<Calendermodel>.from(
    json.decode(str).map((x) => Calendermodel.fromJson(x)));
String calendermodelToJson(Calendermodel data) => json.encode(data.toJson());

@freezed
class Calendermodel with _$Calendermodel {
  const factory Calendermodel({
    String? id,
    String? timesStart,
    String? timesEnd,
    String? subjectName,
    String? locations,
    String? background,
    String? isAllDay,
  }) = _Calendermodel;

  factory Calendermodel.fromJson(Map<String, dynamic> json) =>
      _$CalendermodelFromJson(json);
}

class LoadCalender extends StateNotifier<List<Calendermodel>> {
  LoadCalender(List<Calendermodel>? state) : super(state ?? []);

  void changeData() async {
    state = await loadLich();
    print(state);
    for (int i = 0; i < state.length; i++) {
      getCalender.add(
        Calendar(
            timesStart: DateTime.parse(state[i].timesStart ?? ""),
            timesEnd: DateTime.parse(state[i].timesEnd ?? ""),
            subjectName: state[i].subjectName ?? "",
            locations: "location",
            background: Color(0xff0f8644),
            isAllDay: false),
      );
    }
  }
}
