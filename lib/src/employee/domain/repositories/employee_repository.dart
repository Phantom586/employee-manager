import 'package:employee_manager/core/index.dart'
    show EmployeeEntity, ResultFuture, ResultVoid;
import 'package:employee_manager/src/employee/domain/index.dart' show Employee;

abstract class EmployeeRepository {
  ResultVoid insertEmployee({required EmployeeEntity employee});

  ResultVoid updateEmployee({required EmployeeEntity employee});

  ResultFuture<Employee?> fetchEmployeeById({required String employeeId});

  ResultFuture<List<Employee>?> fetchPreviousEmployees();

  ResultFuture<List<Employee>?> fetchCurrentEmployees();

  ResultVoid deleteEmployeeById({required String employeeId});

  ResultVoid deleteAllEmployees();
}
