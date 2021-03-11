import 'package:json_annotation/json_annotation.dart';
import 'schedule.dart';
part 'generate/model.g.dart';

@JsonSerializable()
class Model {
  String task;
  bool success;
  String studentId;
  String name;
  String className;
  String major;
  List<Schedule> schedule;

  Model(
      {this.task,
        this.success,
        this.studentId,
        this.name,
        this.className,
        this.major,
        this.schedule});

  factory Model.fromJson(Map<String, dynamic> json)  => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);
}
