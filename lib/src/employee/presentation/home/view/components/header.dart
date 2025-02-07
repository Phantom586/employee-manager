import 'package:employee_manager/core/index.dart' show AppColors;
import 'package:flutter/material.dart';

class EmployeeHeader extends StatelessWidget {
  const EmployeeHeader({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        label,
        style: textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w500,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
