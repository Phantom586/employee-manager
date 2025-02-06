import 'package:employee_manager/core/index.dart'
    show BaseUsecase, ResultFuture;
import 'package:employee_manager/src/employee/index.dart'
    show Employee, EmployeeRepository;

class FetchPreviousEmployeesUseCase extends BaseUsecase<List<Employee>?> {
  final EmployeeRepository _repository;

  FetchPreviousEmployeesUseCase({required EmployeeRepository repository})
      : _repository = repository;

  @override
  ResultFuture<List<Employee>?> call() async =>
      _repository.fetchPreviousEmployees();
}
