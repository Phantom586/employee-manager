// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  EmployeeDao? _employeeDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `employee` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `role` TEXT, `startDate` TEXT, `endDate` TEXT)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  EmployeeDao get employeeDao {
    return _employeeDaoInstance ??= _$EmployeeDao(database, changeListener);
  }
}

class _$EmployeeDao extends EmployeeDao {
  _$EmployeeDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _employeeEntityInsertionAdapter = InsertionAdapter(
            database,
            'employee',
            (EmployeeEntity item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'role': item.role,
                  'startDate': _dateTimeTypeConverter.encode(item.startDate),
                  'endDate': _dateTimeTypeConverter.encode(item.endDate)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<EmployeeEntity> _employeeEntityInsertionAdapter;

  @override
  Future<List<EmployeeEntity>?> getEmployees() async {
    return _queryAdapter.queryList('SELECT * FROM employee',
        mapper: (Map<String, Object?> row) => EmployeeEntity(
            id: row['id'] as int?,
            name: row['name'] as String?,
            role: row['role'] as String?,
            startDate:
                _dateTimeTypeConverter.decode(row['startDate'] as String),
            endDate: _dateTimeTypeConverter.decode(row['endDate'] as String)));
  }

  @override
  Future<EmployeeEntity?> findEmployeeById(String employeeId) async {
    return _queryAdapter.query('SELECT * FROM employee WHERE id = ?1',
        mapper: (Map<String, Object?> row) => EmployeeEntity(
            id: row['id'] as int?,
            name: row['name'] as String?,
            role: row['role'] as String?,
            startDate:
                _dateTimeTypeConverter.decode(row['startDate'] as String),
            endDate: _dateTimeTypeConverter.decode(row['endDate'] as String)),
        arguments: [employeeId]);
  }

  @override
  Future<void> deleteEmployeeById(String employeeId) async {
    await _queryAdapter.queryNoReturn('DELETE FROM employee WHERE id = ?1',
        arguments: [employeeId]);
  }

  @override
  Future<void> insert(EmployeeEntity employee) async {
    await _employeeEntityInsertionAdapter.insert(
        employee, OnConflictStrategy.replace);
  }
}

// ignore_for_file: unused_element
final _dateTimeTypeConverter = DateTimeTypeConverter();
