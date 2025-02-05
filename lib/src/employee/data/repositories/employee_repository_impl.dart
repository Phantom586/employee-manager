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
  ResultVoid insertEmployee({required EmployeeEntity employee}) async {
    try {
      await _localDatasource.insertEmployee(employee: employee);
      return const Right(null);
    } on APIException catch (e) {
      return Left(DatabaseFailure.fromException(exception: e));
    }
  }

  @override
  ResultFuture<Employee> fetchEmployeeById({required String employeeId}) async {
    try {
      final employee =
          await _localDatasource.fetchEmployeeById(employeeId: employeeId);
      return employee;
    } on APIException catch (e) {
      return Left(DatabaseFailure.fromException(exception: e));
    }
  }

  @override
  ResultFuture<List<Employee>> fetchCurrentEmployees() {
    // TODO: implement fetchCurrentEmployees
    throw UnimplementedError();
  }

  @override
  ResultFuture<List<Employee>> fetchPreviousEmployees() {
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
