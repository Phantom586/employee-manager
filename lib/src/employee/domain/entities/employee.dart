import 'package:employee_manager/core/data/index.dart' show EmployeeEntity;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    required int? id,
    required String? name,
    required String? role,
    DateTime? startDate,
    DateTime? endDate,
  }) = _Employee;

  factory Employee.fromEntity({required EmployeeEntity employeeEntity}) =>
      Employee(
        id: employeeEntity.id,
        name: employeeEntity.name,
        role: employeeEntity.role,
        startDate: employeeEntity.startDate,
        endDate: employeeEntity.endDate,
      );
}
