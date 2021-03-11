
import 'package:json_annotation/json_annotation.dart';
part 'generate/lesson.g.dart';

@JsonSerializable()
class Lesson {
  String lesson;
  String subjectName;
  String address;

  Lesson({this.lesson, this.subjectName, this.address});

  factory Lesson.fromJson(Map<String, dynamic> json)  => _$LessonFromJson(json);

  Map<String, dynamic> toJson() => _$LessonToJson(this);
  }