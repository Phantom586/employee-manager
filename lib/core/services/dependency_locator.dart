import 'package:employee_manager/core/index.dart'
    show $FloorAppDatabase, AppDatabase, EmployeeDao;
import 'package:employee_manager/src/employee/index.dart'
    show
        EmployeeLocalDatasource,
        EmployeeLocalDatasourceImpl,
        EmployeeRepository,
        EmployeeRepositoryImpl,
        InsertEmployeeUseCase,
        FetchEmployeeByIdUseCase,
        FetchCurrentEmployeesUseCase,
        FetchPreviousEmployeesUseCase,
        UpdateEmployeeByIdUseCase,
        DeleteEmployeeByIdUseCase,
        DeleteAllEmployeesUseCase,
        HomeBloc,
        EmployeeEditBloc,
        EmployeeAddBloc;
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initDepedencyLocator() {
  // Database
  if (kIsWeb) {
    getIt.registerSingletonAsync<AppDatabase>(
      () async => $FloorAppDatabase.inMemoryDatabaseBuilder().build(),
      dispose: (db) async => db.close(),
    );
  } else {
    getIt.registerSingletonAsync<AppDatabase>(
      () async =>
          $FloorAppDatabase.databaseBuilder('app_database_v1.db').build(),
      dispose: (db) async => db.close(),
    );
  }
  // DAOs
  getIt
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
    ..registerLazySingleton(() => FetchEmployeeByIdUseCase(repository: getIt()))
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
    ..registerFactory(
        () => HomeBloc(getIt(), getIt(), getIt(), getIt(), getIt()))
    ..registerFactory(() => EmployeeEditBloc(getIt(), getIt(), getIt()))
    ..registerFactory(() => EmployeeAddBloc(getIt()));
}
