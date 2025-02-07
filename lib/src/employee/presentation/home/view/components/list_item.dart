import 'package:employee_manager/core/index.dart'
    show AppColors, dateTimeFormatter;
import 'package:employee_manager/src/employee/index.dart' show Employee;
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            employee.name!,
            style: textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.focusedTextColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            employee.role!,
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.muteText,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          (employee.endDate != null)
              ? Text(
                  '${dateTimeFormatter.format(employee.startDate!)} - ${dateTimeFormatter.format(employee.endDate!)}',
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.muteText,
                  ),
                )
              : Text(
                  'From ${dateTimeFormatter.format(employee.startDate!)}',
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.muteText,
                  ),
                ),
        ],
      ),
    );
  }
}
