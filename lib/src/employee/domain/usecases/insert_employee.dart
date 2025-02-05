import 'package:employee_manager/core/index.dart'
    show EmployeeEntity, ResultVoid;
import 'package:employee_manager/src/employee/domain/repositories/employee_repository.dart';

class InsertEmployee {
  final EmployeeRepository _repository;

  InsertEmployee({required EmployeeRepository repository})
      : _repository = repository;

  ResultVoid insertEmployee({required EmployeeEntity employee}) async =>
      _repository.insertEmployee(employee: employee);
}
