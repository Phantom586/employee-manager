import 'package:employee_manager/core/index.dart';
import 'package:employee_manager/src/employee/index.dart';
import 'package:flutter/material.dart';

class HomeLoadedView extends StatelessWidget {
  const HomeLoadedView(
      {super.key,
      required this.currentEmployees,
      required this.previousEmployees});

  final List<Employee> currentEmployees;
  final List<Employee> previousEmployees;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Current Employees',
                style: textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
