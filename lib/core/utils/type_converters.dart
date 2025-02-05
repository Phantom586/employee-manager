import 'package:floor/floor.dart';

class DateTimeTypeConverter extends TypeConverter<DateTime?, String> {
  @override
  DateTime decode(String databaseValue) => DateTime.parse(databaseValue);

  @override
  String encode(DateTime? value) => value?.toIso8601String() ?? '';
}
