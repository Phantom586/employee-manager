import 'package:employee_manager/core/index.dart' show ResultFuture, ResultVoid;
import 'package:employee_manager/domain/index.dart' show Employee;

abstract class EmployeeLocalDatasource {
  ResultVoid insertEmployee({required Employee employee});

  ResultFuture<Employee> fetchEmployeeById({required String employeeId});

  ResultFuture<List<Employee>> fetchPreviousEmployees();

  ResultFuture<List<Employee>> fetchCurrentEmployees();

  ResultVoid deleteEmployeeById({required String employeeId});

  ResultVoid deleteAllEmployees();
}
