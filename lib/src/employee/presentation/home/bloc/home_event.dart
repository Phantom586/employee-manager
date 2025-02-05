part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchCurrentEmployees() = _FetchCurrentEmployees;
  const factory HomeEvent.fetchPreviousEmployees() = _FetchPreviousEmployees;
}
