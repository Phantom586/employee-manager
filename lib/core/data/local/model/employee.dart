import 'package:employee_manager/core/index.dart' show SQLiteTableNames;
import 'package:employee_manager/src/employee/domain/index.dart' show Employee;
import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@Entity(tableName: SQLiteTableNames.employee)
class EmployeeEntity extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String? name;
  final String? role;
  final DateTime? startDate;
  final DateTime? endDate;

  const EmployeeEntity(
      {required this.id,
      required this.name,
      required this.role,
      required this.startDate,
      this.endDate});

  factory EmployeeEntity.fromEmployee({required Employee employee}) =>
      EmployeeEntity(
        id: employee.id,
        name: employee.name,
        role: employee.role,
        startDate: employee.startDate,
        endDate: employee.endDate,
      );

  Employee get toEmployee => Employee(
        id: id,
        name: name,
        role: role,
        startDate: startDate,
        endDate: endDate,
      );

  @override
  List<Object?> get props => [id, name, role, startDate, endDate];
}

extension EmployeeEntityList on List<EmployeeEntity> {
  List<Employee> toEmployees() =>
      map((employee) => employee.toEmployee).toList();
}
