import 'dart:async';

import 'package:employee_manager/data/local/dao/employee_dao.dart';
import 'package:employee_manager/data/local/model/employee.dart';
import 'package:employee_manager/data/local/type_converters.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@TypeConverters([
  DateTimeTypeConverter,
])
@Database(
  version: 1,
  entities: [
    EmployeeEntity,
  ],
)
abstract class AppDatabase extends FloorDatabase {
  EmployeeDao get employeeDao;
}

class SQLiteTableNames {
  static const employee = 'employee';
}
