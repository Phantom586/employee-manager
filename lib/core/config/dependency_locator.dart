import 'package:employee_manager/core/data/local/app_database.dart';
import 'package:employee_manager/core/data/local/dao/employee_dao.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void initDependencyLocator() {
  getIt
    ..registerLazySingletonAsync<AppDatabase>(
      () async =>
          $FloorAppDatabase.databaseBuilder('app_database_v1.db').build(),
      dispose: (db) async => db.close(),
    )
    ..registerLazySingleton<EmployeeDao>(
      () => getIt<AppDatabase>().employeeDao,
    );
}
