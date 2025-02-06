import 'package:bloc/bloc.dart';
import 'package:employee_manager/src/employee/index.dart'
    show
        FetchCurrentEmployeesUseCase,
        FetchPreviousEmployeesUseCase,
        DeleteEmployeeByIdUseCase,
        Employee;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchCurrentEmployeesUseCase _fetchCurrentEmployeesUseCase;
  final FetchPreviousEmployeesUseCase _fetchPreviousEmployeesUseCase;
  final DeleteEmployeeByIdUseCase _deleteEmployeeByIdUseCase;

  HomeBloc(this._fetchCurrentEmployeesUseCase,
      this._fetchPreviousEmployeesUseCase, this._deleteEmployeeByIdUseCase)
      : super(
          const HomeState(
            currentEmployees: [],
            previousEmployees: [],
            isLoading: false,
          ),
        ) {
    on<FetchEmployees>(_fetchEmployees);
    on<DeleteEmployeeById>(_deleteEmployeeById);
  }

  Future<void> _fetchEmployees(
    FetchEmployees event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
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
    // final currentEmployees = await
  }
}
