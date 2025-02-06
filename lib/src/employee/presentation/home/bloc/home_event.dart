part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchEmployees() = FetchEmployees;
  const factory HomeEvent.deleteEmployeeById({required int employeeId}) =
      DeleteEmployeeById;
  const factory HomeEvent.deleteAllEmployees() = DeleteAllEmployees;
}
