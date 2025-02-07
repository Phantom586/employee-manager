part of 'employee_edit_bloc.dart';

@freezed
class EmployeeEditEvent with _$EmployeeEditEvent {
  const factory EmployeeEditEvent.fetchEmployeeById({required int employeeId}) =
      FetchEmployeeById;
  const factory EmployeeEditEvent.editEmployeeById({
    required Employee employee,
  }) = EditEmployeeById;
  const factory EmployeeEditEvent.deleteEmployeeById({
    required int employeeId,
  }) = DeleteEmployeeByIdE;
}
