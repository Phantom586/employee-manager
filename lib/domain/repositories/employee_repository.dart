import 'package:employee_manager/core/index.dart'
    show EmployeeEntity, ResultFuture, ResultVoid;

abstract class EmployeeRepository {
  ResultVoid insertEmployee({required EmployeeEntity employee});

  ResultFuture<EmployeeEntity> fetchEmployeeById({required String employeeId});

  ResultFuture<List<EmployeeEntity>> fetchPreviousEmployees();

  ResultFuture<List<EmployeeEntity>> fetchCurrentEmployees();

  ResultVoid deleteEmployeeById({required String employeeId});

  ResultVoid deleteAllEmployees();
}
