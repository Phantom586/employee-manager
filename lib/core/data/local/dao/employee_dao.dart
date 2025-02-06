import 'package:employee_manager/core/index.dart'
    show EmployeeEntity, SQLiteTableNames;
import 'package:floor/floor.dart';

@dao
abstract class EmployeeDao {
  @Query(
    '''
    SELECT * FROM ${SQLiteTableNames.employee} WHERE 
    startDate is NOT NULL AND endDate is NULL
    ''',
  )
  Future<List<EmployeeEntity>?> getCurrentEmployees();

  @Query(
    '''
    SELECT * FROM ${SQLiteTableNames.employee} WHERE 
    startDate is NOT NULL AND endDate is NOT NULL
    ''',
  )
  Future<List<EmployeeEntity>?> getPreviousEmployees();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insert(EmployeeEntity employee);

  @Query('SELECT * FROM ${SQLiteTableNames.employee} WHERE id = :employeeId')
  Future<EmployeeEntity?> findEmployeeById(int employeeId);

  @Query('DELETE FROM ${SQLiteTableNames.employee} WHERE id = :employeeId')
  Future<void> deleteEmployeeById(int employeeId);

  @Query('DELETE FROM ${SQLiteTableNames.employee}')
  Future<void> deleteAllEmployees();
}
