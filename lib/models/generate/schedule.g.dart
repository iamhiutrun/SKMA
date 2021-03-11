// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return Schedule(
    date: json['date'] as int,
    lessons: (json['lessons'] as List)
        ?.map((e) =>
            e == null ? null : Lesson.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'date': instance.date,
      'lessons': instance.lessons,
    };
