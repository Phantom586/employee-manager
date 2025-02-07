import 'package:employee_manager/core/index.dart'
    show StringCallback, EmployeeRoles, EmployeeRolesHelper, AppColors;
import 'package:flutter/material.dart';

class RoleBottomSheet extends StatelessWidget {
  const RoleBottomSheet({super.key, required this.onTap});

  final StringCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView.builder(
      itemCount: EmployeeRoles.values.length,
      itemBuilder: (context, index) {
        final role = EmployeeRoles.values[index];
        final roleName = EmployeeRolesHelper.stringValueOf(role);
        return ListTile(
            onTap: () => onTap(roleName),
            title: Text(
              roleName!,
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                color: AppColors.focusedTextColor,
              ),
            ));
      },
    );
  }
}
