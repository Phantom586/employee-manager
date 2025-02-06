import 'package:dartz/dartz.dart';
import 'package:employee_manager/core/index.dart'
    show
        EmployeeDao,
        ResultFuture,
        ResultVoid,
        EmployeeEntity,
        APIException,
        EmployeeEntityList;
import 'package:employee_manager/src/employee/index.dart'
    show Employee, EmployeeLocalDatasource;

class EmployeeLocalDatasourceImpl implements EmployeeLocalDatasource {
  final EmployeeDao _employeeDao;

  EmployeeLocalDatasourceImpl({required EmployeeDao employeeDao})
      : _employeeDao = employeeDao;

  @override
  ResultVoid insertEmployee({required Employee employee}) async {
    try {
      final employeeEntity = EmployeeEntity.fromEmployee(employee: employee);
      await _employeeDao.insert(employeeEntity);
      return Right(null);
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }

  @override
  ResultVoid updateEmployee({required Employee employee}) async {
    try {
      final employeeEntity = EmployeeEntity.fromEmployee(employee: employee);
      await _employeeDao.insert(employeeEntity);
      return Right(null);
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }

  @override
  ResultFuture<Employee?> fetchEmployeeById({required int employeeId}) async {
    try {
      final employeeEntity = await _employeeDao.findEmployeeById(employeeId);
      final employee = employeeEntity?.toEmployee;
      return Right(employee);
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }

  @override
  ResultFuture<List<Employee>?> fetchCurrentEmployees() async {
    try {
      final employeeEntities = await _employeeDao.getCurrentEmployees();
      final employees = employeeEntities?.toEmployees();
      return Right(employees);
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }

  @override
  ResultFuture<List<Employee>?> fetchPreviousEmployees() async {
    try {
      final employeeEntities = await _employeeDao.getPreviousEmployees();
      final employees = employeeEntities?.toEmployees();
      return Right(employees);
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }

  @override
  ResultVoid deleteEmployeeById({required int employeeId}) async {
    try {
      await _employeeDao.deleteEmployeeById(employeeId);
      return Right(null);
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }

  @override
  ResultVoid deleteAllEmployees() async {
    try {
      await _employeeDao.deleteAllEmployees();
      return Right(null);
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }
}
