// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Calendermodel _$CalendermodelFromJson(Map<String, dynamic> json) {
  return _Calendermodel.fromJson(json);
}

/// @nodoc
mixin _$Calendermodel {
  String? get id => throw _privateConstructorUsedError;
  String? get timesStart => throw _privateConstructorUsedError;
  String? get timesEnd => throw _privateConstructorUsedError;
  String? get subjectName => throw _privateConstructorUsedError;
  String? get locations => throw _privateConstructorUsedError;
  String? get background => throw _privateConstructorUsedError;
  String? get isAllDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendermodelCopyWith<Calendermodel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendermodelCopyWith<$Res> {
  factory $CalendermodelCopyWith(
          Calendermodel value, $Res Function(Calendermodel) then) =
      _$CalendermodelCopyWithImpl<$Res, Calendermodel>;
  @useResult
  $Res call(
      {String? id,
      String? timesStart,
      String? timesEnd,
      String? subjectName,
      String? locations,
      String? background,
      String? isAllDay});
}

/// @nodoc
class _$CalendermodelCopyWithImpl<$Res, $Val extends Calendermodel>
    implements $CalendermodelCopyWith<$Res> {
  _$CalendermodelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? timesStart = freezed,
    Object? timesEnd = freezed,
    Object? subjectName = freezed,
    Object? locations = freezed,
    Object? background = freezed,
    Object? isAllDay = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timesStart: freezed == timesStart
          ? _value.timesStart
          : timesStart // ignore: cast_nullable_to_non_nullable
              as String?,
      timesEnd: freezed == timesEnd
          ? _value.timesEnd
          : timesEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      isAllDay: freezed == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendermodelCopyWith<$Res>
    implements $CalendermodelCopyWith<$Res> {
  factory _$$_CalendermodelCopyWith(
          _$_Calendermodel value, $Res Function(_$_Calendermodel) then) =
      __$$_CalendermodelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? timesStart,
      String? timesEnd,
      String? subjectName,
      String? locations,
      String? background,
      String? isAllDay});
}

/// @nodoc
class __$$_CalendermodelCopyWithImpl<$Res>
    extends _$CalendermodelCopyWithImpl<$Res, _$_Calendermodel>
    implements _$$_CalendermodelCopyWith<$Res> {
  __$$_CalendermodelCopyWithImpl(
      _$_Calendermodel _value, $Res Function(_$_Calendermodel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? timesStart = freezed,
    Object? timesEnd = freezed,
    Object? subjectName = freezed,
    Object? locations = freezed,
    Object? background = freezed,
    Object? isAllDay = freezed,
  }) {
    return _then(_$_Calendermodel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timesStart: freezed == timesStart
          ? _value.timesStart
          : timesStart // ignore: cast_nullable_to_non_nullable
              as String?,
      timesEnd: freezed == timesEnd
          ? _value.timesEnd
          : timesEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      isAllDay: freezed == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Calendermodel implements _Calendermodel {
  const _$_Calendermodel(
      {this.id,
      this.timesStart,
      this.timesEnd,
      this.subjectName,
      this.locations,
      this.background,
      this.isAllDay});

  factory _$_Calendermodel.fromJson(Map<String, dynamic> json) =>
      _$$_CalendermodelFromJson(json);

  @override
  final String? id;
  @override
  final String? timesStart;
  @override
  final String? timesEnd;
  @override
  final String? subjectName;
  @override
  final String? locations;
  @override
  final String? background;
  @override
  final String? isAllDay;

  @override
  String toString() {
    return 'Calendermodel(id: $id, timesStart: $timesStart, timesEnd: $timesEnd, subjectName: $subjectName, locations: $locations, background: $background, isAllDay: $isAllDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Calendermodel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timesStart, timesStart) ||
                other.timesStart == timesStart) &&
            (identical(other.timesEnd, timesEnd) ||
                other.timesEnd == timesEnd) &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.locations, locations) ||
                other.locations == locations) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.isAllDay, isAllDay) ||
                other.isAllDay == isAllDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, timesStart, timesEnd,
      subjectName, locations, background, isAllDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendermodelCopyWith<_$_Calendermodel> get copyWith =>
      __$$_CalendermodelCopyWithImpl<_$_Calendermodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendermodelToJson(
      this,
    );
  }
}

abstract class _Calendermodel implements Calendermodel {
  const factory _Calendermodel(
      {final String? id,
      final String? timesStart,
      final String? timesEnd,
      final String? subjectName,
      final String? locations,
      final String? background,
      final String? isAllDay}) = _$_Calendermodel;

  factory _Calendermodel.fromJson(Map<String, dynamic> json) =
      _$_Calendermodel.fromJson;

  @override
  String? get id;
  @override
  String? get timesStart;
  @override
  String? get timesEnd;
  @override
  String? get subjectName;
  @override
  String? get locations;
  @override
  String? get background;
  @override
  String? get isAllDay;
  @override
  @JsonKey(ignore: true)
  _$$_CalendermodelCopyWith<_$_Calendermodel> get copyWith =>
      throw _privateConstructorUsedError;
}
