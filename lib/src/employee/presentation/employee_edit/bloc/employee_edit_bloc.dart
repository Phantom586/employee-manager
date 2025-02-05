import 'package:bloc/bloc.dart';
import 'package:employee_manager/src/employee/index.dart' show Employee;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_edit_event.dart';
part 'employee_edit_state.dart';
part 'employee_edit_bloc.freezed.dart';

class EmployeeEditBloc extends Bloc<EmployeeEditEvent, EmployeeEditState> {
  EmployeeEditBloc() : super(_Initial()) {
    on<EmployeeEditEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
