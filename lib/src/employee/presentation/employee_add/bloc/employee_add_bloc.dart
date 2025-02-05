import 'package:bloc/bloc.dart';
import 'package:employee_manager/src/employee/index.dart' show Employee;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_add_event.dart';
part 'employee_add_state.dart';
part 'employee_add_bloc.freezed.dart';

class EmployeeAddBloc extends Bloc<EmployeeAddEvent, EmployeeAddState> {
  EmployeeAddBloc() : super(_Initial()) {
    on<EmployeeAddEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
