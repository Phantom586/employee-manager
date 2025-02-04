import 'package:employee_manager/data/local/app_database.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:floor/floor.dart';

part 'employee.g.dart';

@Entity(tableName: SQLiteTableNames.employee)
@JsonSerializable()
class EmployeeEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String? name;
  final String? role;
  final DateTime? startDate;
  final DateTime? endDate;

  EmployeeEntity(
      {required this.id,
      required this.name,
      required this.role,
      required this.startDate,
      this.endDate});

  factory EmployeeEntity.fromJson(Map<String, dynamic> json) =>
      _$EmployeeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeEntityToJson(this);
}
