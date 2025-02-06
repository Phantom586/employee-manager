import 'package:employee_manager/core/data/local/app_database.dart';
import 'package:employee_manager/core/data/local/dao/employee_dao.dart';
import 'package:employee_manager/src/employee/data/datasources/employee_local_datasource_impl.dart';
import 'package:employee_manager/src/employee/index.dart';
import 'package:employee_manager/src/employee/presentation/employee_add/bloc/employee_add_bloc.dart';
import 'package:employee_manager/src/employee/presentation/employee_edit/bloc/employee_edit_bloc.dart';
import 'package:employee_manager/src/employee/presentation/home/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class DependencyLocator {
  static void init() {
    getIt
      ..registerLazySingletonAsync<AppDatabase>(
        () async =>
            $FloorAppDatabase.databaseBuilder('app_database_v1.db').build(),
        dispose: (db) async => db.close(),
      )
      ..registerLazySingleton<EmployeeDao>(
        () => getIt<AppDatabase>().employeeDao,
      )
      // Datasources
      ..registerLazySingleton<EmployeeLocalDatasource>(
          () => EmployeeLocalDatasourceImpl(employeeDao: getIt()))
      // Repository
      ..registerLazySingleton<EmployeeRepository>(
          () => EmployeeRepositoryImpl(localDatasource: getIt()))
      // Usecases
      ..registerLazySingleton(() => InsertEmployeeUseCase(repository: getIt()))
      ..registerLazySingleton(
          () => FetchEmployeeByIdUseCase(repository: getIt()))
      ..registerLazySingleton(
          () => FetchCurrentEmployeesUseCase(repository: getIt()))
      ..registerLazySingleton(
          () => FetchPreviousEmployeesUseCase(repository: getIt()))
      ..registerLazySingleton(
          () => UpdateEmployeeByIdUseCase(repository: getIt()))
      ..registerLazySingleton(
          () => DeleteEmployeeByIdUseCase(repository: getIt()))
      ..registerLazySingleton(
          () => DeleteAllEmployeesUseCase(repository: getIt()))
      // Bloc
      ..registerFactory(() => HomeBloc(getIt(), getIt(), getIt(), getIt()))
      ..registerFactory(() => EmployeeEditBloc(getIt(), getIt(), getIt()))
      ..registerFactory(() => EmployeeAddBloc(getIt()));
  }
}
