part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Employee> currentEmployees,
    required List<Employee> previousEmployees,
    required bool isLoading,
  }) = _HomeState;
}
