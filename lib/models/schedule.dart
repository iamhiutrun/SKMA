import 'package:json_annotation/json_annotation.dart';
import 'lesson.dart';
part 'generate/schedule.g.dart';

@JsonSerializable()
class Schedule {
  int date;
  List<Lesson> lessons;

  Schedule({this.date, this.lessons});

  factory Schedule.fromJson(Map<String, dynamic> json)  => _$ScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}