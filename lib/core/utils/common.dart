import 'package:flutter/material.dart';

Future<DateTime?> showCommonDatePicker(BuildContext context) {
  return showDatePicker(
    context: context,
    currentDate: DateTime.now(),
    firstDate: DateTime(2020),
    lastDate: DateTime(2025),
  );
}
