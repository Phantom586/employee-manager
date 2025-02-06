import 'package:employee_manager/core/index.dart'
    show BaseUsecase, ResultFuture;
import 'package:employee_manager/src/employee/index.dart'
    show EmployeeRepository;

class DeleteAllEmployeeByIdUseCase extends BaseUsecase<void> {
  final EmployeeRepository _repository;

  DeleteAllEmployeeByIdUseCase({required EmployeeRepository repository})
      : _repository = repository;

  @override
  ResultFuture call() async => _repository.deleteAllEmployees();
}
