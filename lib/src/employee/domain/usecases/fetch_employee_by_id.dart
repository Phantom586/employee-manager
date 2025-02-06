import 'package:employee_manager/core/index.dart'
    show BaseUsecaseWithParams, ResultFuture;
import 'package:employee_manager/src/employee/index.dart'
    show Employee, EmployeeRepository;

class FetchEmployeeByIdUseCase extends BaseUsecaseWithParams<Employee?, int> {
  final EmployeeRepository _repository;

  FetchEmployeeByIdUseCase({required EmployeeRepository repository})
      : _repository = repository;

  @override
  ResultFuture<Employee?> call(p) async =>
      _repository.fetchEmployeeById(employeeId: p);
}
