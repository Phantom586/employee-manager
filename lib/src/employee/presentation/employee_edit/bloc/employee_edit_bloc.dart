import 'package:bloc/bloc.dart';
import 'package:employee_manager/src/employee/index.dart'
    show
        $EmployeeCopyWith,
        DeleteEmployeeByIdUseCase,
        Employee,
        FetchEmployeeByIdUseCase,
        UpdateEmployeeByIdUseCase;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_edit_event.dart';
part 'employee_edit_state.dart';
part 'employee_edit_bloc.freezed.dart';

class EmployeeEditBloc extends Bloc<EmployeeEditEvent, EmployeeEditState> {
  final FetchEmployeeByIdUseCase _fetchEmployeeByIdUseCase;
  final UpdateEmployeeByIdUseCase _updateEmployeeByIdUseCase;
  final DeleteEmployeeByIdUseCase _deleteEmployeeByIdUseCase;

  EmployeeEditBloc(this._fetchEmployeeByIdUseCase,
      this._updateEmployeeByIdUseCase, this._deleteEmployeeByIdUseCase)
      : super(
          EmployeeEditState(
            employee: null,
            isLoading: false,
          ),
        ) {
    on<FetchEmployeeById>(_fetchEmployeeById);
    on<EditEmployeeById>(_editEmployeeById);
    on<DeleteEmployeeByIdE>(_deleteEmployeeById);
  }

  Future<void> _fetchEmployeeById(
    FetchEmployeeById event,
    Emitter<EmployeeEditState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final result = await _fetchEmployeeByIdUseCase(event.employeeId);

    result.fold(
        (l) => {},
        (r) => emit(
              state.copyWith(
                employee: r,
                isLoading: false,
              ),
            ));
  }

  Future<void> _editEmployeeById(
    EditEmployeeById event,
    Emitter<EmployeeEditState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final result = await _updateEmployeeByIdUseCase(event.employee);

    result.fold(
        (l) => {},
        (r) => emit(
              state.copyWith(
                employee: r,
                isLoading: false,
              ),
            ));
  }

  Future<void> _deleteEmployeeById(
    DeleteEmployeeByIdE event,
    Emitter<EmployeeEditState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final result = await _deleteEmployeeByIdUseCase(event.employeeId);

    result.fold(
        (l) => {},
        (r) => emit(
              state.copyWith(
                isLoading: false,
              ),
            ));
  }
}
