import 'package:employee_manager/core/index.dart'
    show ResultFuture, ResultVoid, EmployeeEntity;
import 'package:employee_manager/domain/index.dart' show EmployeeRepository;

class EmployeeRepositoryImpl implements EmployeeRepository {
  @override
  ResultVoid insertEmployee({required EmployeeEntity employee}) {
    // TODO: implement insertEmployee
    throw UnimplementedError();
  }

  @override
  ResultFuture<EmployeeEntity> fetchEmployeeById({required String employeeId}) {
    // TODO: implement fetchEmployeeById
    throw UnimplementedError();
  }

  @override
  ResultFuture<List<EmployeeEntity>> fetchCurrentEmployees() {
    // TODO: implement fetchCurrentEmployees
    throw UnimplementedError();
  }

  @override
  ResultFuture<List<EmployeeEntity>> fetchPreviousEmployees() {
    // TODO: implement fetchPreviousEmployees
    throw UnimplementedError();
  }

  @override
  ResultVoid deleteEmployeeById({required String employeeId}) {
    // TODO: implement deleteEmployeeById
    throw UnimplementedError();
  }

  @override
  ResultVoid deleteAllEmployees() {
    // TODO: implement deleteAllEmployees
    throw UnimplementedError();
  }
}
