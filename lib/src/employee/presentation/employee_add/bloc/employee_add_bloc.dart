import 'package:bloc/bloc.dart';
import 'package:employee_manager/src/employee/index.dart'
    show $EmployeeCopyWith, Employee, InsertEmployeeUseCase;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_add_event.dart';
part 'employee_add_state.dart';
part 'employee_add_bloc.freezed.dart';

class EmployeeAddBloc extends Bloc<EmployeeAddEvent, EmployeeAddState> {
  final InsertEmployeeUseCase insertEmployeeUseCase;

  EmployeeAddBloc(this.insertEmployeeUseCase)
      : super(
          EmployeeAddState(
            isLoading: false,
          ),
        ) {
    on<AddEmployee>(_addEmployee);
  }

  Future<void> _addEmployee(
    AddEmployee event,
    Emitter<EmployeeAddState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final result = await insertEmployeeUseCase(event.employee);

    result.fold(
        (l) => emit(
              state.copyWith(
                isLoading: false,
              ),
            ),
        (r) => emit(
              state.copyWith(
                isLoading: false,
              ),
            ));
  }
}
