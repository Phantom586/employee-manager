import 'package:dartz/dartz.dart';
import 'package:employee_manager/core/index.dart'
    show
        ResultFuture,
        ResultVoid,
        EmployeeEntity,
        APIException,
        DatabaseFailure;
import 'package:employee_manager/src/employee/data/index.dart'
    show EmployeeLocalDatasource;
import 'package:employee_manager/src/employee/domain/index.dart'
    show Employee, EmployeeRepository;

class EmployeeRepositoryImpl implements EmployeeRepository {
  final EmployeeLocalDatasource _localDatasource;

  EmployeeRepositoryImpl({required EmployeeLocalDatasource localDatasource})
      : _localDatasource = localDatasource;

  @override
  ResultVoid insertEmployee({required Employee employee}) async {
    try {
      await _localDatasource.insertEmployee(employee: employee);
      return const Right(null);
    } on APIException catch (e) {
      return Left(DatabaseFailure.fromException(exception: e));
    }
  }

  @override
  ResultVoid updateEmployee({required Employee employee}) async {
    try {
      await _localDatasource.updateEmployee(employee: employee);
      return const Right(null);
    } on APIException catch (e) {
      return Left(DatabaseFailure.fromException(exception: e));
    }
  }

  @override
  ResultFuture<Employee?> fetchEmployeeById({required int employeeId}) async {
    try {
      final employee =
          await _localDatasource.fetchEmployeeById(employeeId: employeeId);
      return employee;
    } on APIException catch (e) {
      return Left(DatabaseFailure.fromException(exception: e));
    }
  }

  @override
  ResultFuture<List<Employee>?> fetchCurrentEmployees() async {
    try {
      final employees = await _localDatasource.fetchCurrentEmployees();
      return employees;
    } on APIException catch (e) {
      return Left(DatabaseFailure.fromException(exception: e));
    }
  }

  @override
  ResultFuture<List<Employee>?> fetchPreviousEmployees() async {
    try {
      final employees = await _localDatasource.fetchPreviousEmployees();
      return employees;
    } on APIException catch (e) {
      return Left(DatabaseFailure.fromException(exception: e));
    }
  }

  @override
  ResultVoid deleteEmployeeById({required int employeeId}) async {
    try {
      await _localDatasource.deleteEmployeeById(employeeId: employeeId);
      return const Right(null);
    } on APIException catch (e) {
      return Left(DatabaseFailure.fromException(exception: e));
    }
  }

  @override
  ResultVoid deleteAllEmployees() async {
    try {
      await _localDatasource.deleteAllEmployees();
      return const Right(null);
    } on APIException catch (e) {
      return Left(DatabaseFailure.fromException(exception: e));
    }
  }
}
