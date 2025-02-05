import 'package:employee_manager/core/index.dart'
    show EmployeeEntity, SQLiteTableNames;
import 'package:floor/floor.dart';

@dao
abstract class EmployeeDao {
  @Query('SELECT * FROM ${SQLiteTableNames.employee}')
  Future<List<EmployeeEntity>?> getEmployees();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insert(EmployeeEntity employee);

  @Query('SELECT * FROM ${SQLiteTableNames.employee} WHERE id = :employeeId')
  Future<EmployeeEntity?> findEmployeeById(String employeeId);

  @Query('DELETE FROM ${SQLiteTableNames.employee} WHERE id = :employeeId')
  Future<void> deleteEmployeeById(String employeeId);

  @Query('DELETE FROM ${SQLiteTableNames.employee}')
  Future<void> deleteAllEmployees();
}
