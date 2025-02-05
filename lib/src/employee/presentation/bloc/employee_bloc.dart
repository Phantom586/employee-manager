import 'package:bloc/bloc.dart';
import 'package:employee_manager/src/employee/index.dart' show Employee;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(_Initial()) {
    on<EmployeeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
