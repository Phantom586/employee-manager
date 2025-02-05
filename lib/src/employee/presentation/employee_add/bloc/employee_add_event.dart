part of 'employee_add_bloc.dart';

@freezed
class EmployeeAddEvent with _$EmployeeAddEvent {
  const factory EmployeeAddEvent.addEmployee({required Employee employee}) =
      _AddEmployee;
}
