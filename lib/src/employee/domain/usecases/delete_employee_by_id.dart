import 'package:employee_manager/core/index.dart'
    show BaseUsecaseWithParams, ResultFuture;
import 'package:employee_manager/src/employee/index.dart'
    show EmployeeRepository;

class DeleteEmployeeByIdUseCase extends BaseUsecaseWithParams<void, int> {
  final EmployeeRepository _repository;

  DeleteEmployeeByIdUseCase({required EmployeeRepository repository})
      : _repository = repository;

  @override
  ResultFuture call(p) async => _repository.deleteEmployeeById(employeeId: p);
}
