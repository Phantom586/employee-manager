import 'package:employee_manager/core/index.dart' show ResultFuture, ResultVoid;
import 'package:employee_manager/src/employee/domain/index.dart' show Employee;

abstract class EmployeeLocalDatasource {
  ResultVoid insertEmployee({required Employee employee});

  ResultVoid updateEmployee({required Employee employee});

  ResultFuture<Employee?> fetchEmployeeById({required int employeeId});

  ResultFuture<List<Employee>?> fetchPreviousEmployees();

  ResultFuture<List<Employee>?> fetchCurrentEmployees();

  ResultVoid deleteEmployeeById({required int employeeId});

  ResultVoid deleteAllEmployees();
}
