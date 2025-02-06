part of 'employee_add_bloc.dart';

@freezed
class EmployeeAddState with _$EmployeeAddState {
  const factory EmployeeAddState({
    required bool isLoading,
  }) = _EmployeeAddState;
}
