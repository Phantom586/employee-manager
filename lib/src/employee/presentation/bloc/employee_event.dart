part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.fetchEmployeeById({required String employeeId}) =
      _FetchEmployeeById;
  const factory EmployeeEvent.deleteEmployee() = _DeleteEmployee;
}
