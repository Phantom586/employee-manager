import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:employee_manager/src/employee/index.dart'
    show
        FetchCurrentEmployeesUseCase,
        FetchPreviousEmployeesUseCase,
        DeleteEmployeeByIdUseCase,
        DeleteAllEmployeesUseCase,
        Employee;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchCurrentEmployeesUseCase _fetchCurrentEmployeesUseCase;
  final FetchPreviousEmployeesUseCase _fetchPreviousEmployeesUseCase;
  final DeleteEmployeeByIdUseCase _deleteEmployeeByIdUseCase;
  final DeleteAllEmployeesUseCase _deleteAllEmployeesUseCase;

  HomeBloc(
      this._fetchCurrentEmployeesUseCase,
      this._fetchPreviousEmployeesUseCase,
      this._deleteAllEmployeesUseCase,
      this._deleteEmployeeByIdUseCase)
      : super(
          const HomeState(
            currentEmployees: [],
            previousEmployees: [],
            isLoading: false,
          ),
        ) {
    on<FetchEmployees>(_fetchAllEmployees);
    on<DeleteEmployeeById>(_deleteEmployeeById);
    on<DeleteAllEmployees>(_deleteAllEmployees);
  }

  Future<(List<Employee>, List<Employee>)> _fetchEmployees() async {
    List<Employee> currentEmployees = [];
    List<Employee> previousEmployees = [];

    final resultCurrentEmployees = await _fetchCurrentEmployeesUseCase();
    final resultPreviousEmployees = await _fetchPreviousEmployeesUseCase();

    resultCurrentEmployees.fold((l) => {}, (r) {
      currentEmployees = r ?? [];
    });
    resultPreviousEmployees.fold((l) => {}, (r) {
      previousEmployees = r ?? [];
    });

    return (currentEmployees, previousEmployees);
  }

  Future<void> _fetchAllEmployees(
    FetchEmployees event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final (currentEmployees, previousEmployees) = await _fetchEmployees();
    log('CurrentEmployees: ${currentEmployees.toString()}');
    log('PreviousEmployees: ${previousEmployees.toString()}');

    emit(
      state.copyWith(
        currentEmployees: currentEmployees,
        previousEmployees: previousEmployees,
        isLoading: false,
      ),
    );
  }

  Future<void> _deleteEmployeeById(
    DeleteEmployeeById event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final result = await _deleteEmployeeByIdUseCase(event.employeeId);

    final (currentEmployees, previousEmployees) = await _fetchEmployees();

    result.fold(
      (l) => {},
      (r) => emit(
        state.copyWith(
          currentEmployees: currentEmployees,
          previousEmployees: previousEmployees,
          isLoading: false,
        ),
      ),
    );
  }

  Future<void> _deleteAllEmployees(
    DeleteAllEmployees event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final result = await _deleteAllEmployeesUseCase();

    result.fold(
      (l) => {},
      (r) => emit(
        state.copyWith(
          currentEmployees: [],
          previousEmployees: [],
          isLoading: false,
        ),
      ),
    );
  }
}
