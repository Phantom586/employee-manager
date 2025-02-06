part of 'employee_edit_bloc.dart';

@freezed
class EmployeeEditEvent with _$EmployeeEditEvent {
  const factory EmployeeEvent.fetchEmployeeById({required String employeeId}) =
      _FetchEmployeeById;
  const factory EmployeeEditEvent.editEmployee({required Employee employee}) =
      _EditEmployee;
  const factory EmployeeEditEvent.deleteEmployee() = _DeleteEmployee;
}
