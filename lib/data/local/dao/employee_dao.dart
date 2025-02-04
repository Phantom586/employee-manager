import 'package:employee_manager/data/local/app_database.dart';
import 'package:employee_manager/data/local/model/employee.dart';
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
}
