import 'package:employee_manager/core/index.dart'
    show BaseUsecaseWithParams, ResultFuture;
import 'package:employee_manager/src/employee/index.dart'
    show EmployeeRepository, Employee;

class UpdateEmployeeByIdUseCase extends BaseUsecaseWithParams<void, Employee> {
  final EmployeeRepository _repository;

  UpdateEmployeeByIdUseCase({required EmployeeRepository repository})
      : _repository = repository;

  @override
  ResultFuture call(p) async => _repository.updateEmployee(employee: p);
}
