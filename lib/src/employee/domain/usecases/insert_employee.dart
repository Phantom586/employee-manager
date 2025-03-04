import 'package:employee_manager/core/index.dart'
    show BaseUsecaseWithParams, ResultFuture;
import 'package:employee_manager/src/employee/index.dart'
    show Employee, EmployeeRepository;

class InsertEmployeeUseCase extends BaseUsecaseWithParams<void, Employee> {
  final EmployeeRepository _repository;

  InsertEmployeeUseCase({required EmployeeRepository repository})
      : _repository = repository;

  @override
  ResultFuture call(p) async => _repository.insertEmployee(employee: p);
}
