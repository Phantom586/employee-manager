part of 'employee_edit_bloc.dart';

@freezed
class EmployeeEditState with _$EmployeeEditState {
  const factory EmployeeEditState({
    required Employee? employee,
    required bool isLoading,
  }) = _Initial;
}
