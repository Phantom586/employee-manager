import 'package:bloc/bloc.dart';
import 'package:employee_manager/src/employee/domain/entities/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          const HomeState(
            currentEmployees: [],
            previousEmployees: [],
            isLoading: false,
          ),
        ) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
