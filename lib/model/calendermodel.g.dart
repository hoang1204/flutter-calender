// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Calendermodel _$$_CalendermodelFromJson(Map<String, dynamic> json) =>
    _$_Calendermodel(
      id: json['id'] as String?,
      timesStart: json['timesStart'] as String?,
      timesEnd: json['timesEnd'] as String?,
      subjectName: json['subjectName'] as String?,
      locations: json['locations'] as String?,
      background: json['background'] as String?,
      isAllDay: json['isAllDay'] as String?,
    );

Map<String, dynamic> _$$_CalendermodelToJson(_$_Calendermodel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timesStart': instance.timesStart,
      'timesEnd': instance.timesEnd,
      'subjectName': instance.subjectName,
      'locations': instance.locations,
      'background': instance.background,
      'isAllDay': instance.isAllDay,
    };
