// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return Lesson(
    lesson: json['lesson'] as String,
    subjectName: json['subjectName'] as String,
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$LessonToJson(Lesson instance) => <String, dynamic>{
      'lesson': instance.lesson,
      'subjectName': instance.subjectName,
      'address': instance.address,
    };
