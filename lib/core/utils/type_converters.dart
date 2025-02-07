import 'package:floor/floor.dart';
import 'package:intl/intl.dart';

class DateTimeTypeConverter extends TypeConverter<DateTime?, String> {
  @override
  DateTime? decode(String databaseValue) =>
      databaseValue.isNotEmpty ? DateTime.parse(databaseValue) : null;

  @override
  String encode(DateTime? value) => value?.toIso8601String() ?? '';
}

final dateTimeFormatter = DateFormat('d MMM yyyy');
