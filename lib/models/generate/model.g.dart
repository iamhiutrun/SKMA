// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) {
  return Model(
    task: json['task'] as String,
    success: json['success'] as bool,
    studentId: json['studentId'] as String,
    name: json['name'] as String,
    className: json['className'] as String,
    major: json['major'] as String,
    schedule: (json['schedule'] as List)
        ?.map((e) =>
            e == null ? null : Schedule.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'task': instance.task,
      'success': instance.success,
      'studentId': instance.studentId,
      'name': instance.name,
      'className': instance.className,
      'major': instance.major,
      'schedule': instance.schedule,
    };
