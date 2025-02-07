import 'package:employee_manager/core/index.dart';
import 'package:employee_manager/src/employee/index.dart';
import 'package:employee_manager/src/employee/presentation/employee_add/view/components/role_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class EmployeeView extends StatefulWidget {
  const EmployeeView({super.key});

  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
  late TextEditingController _employeeName;
  late TextEditingController _employeeRole;
  late TextEditingController _startDate;
  late TextEditingController _endDate;

  @override
  void initState() {
    super.initState();

    _employeeName = TextEditingController();
    _employeeRole = TextEditingController();
    _startDate = TextEditingController();
    _endDate = TextEditingController();
  }

  @override
  void dispose() {
    _employeeName.dispose();
    _employeeRole.dispose();
    _startDate.dispose();
    _endDate.dispose();
    super.dispose();
  }

  Future<DateTime?> _showDatePicker() {
    return showDatePicker(
      context: context,
      currentDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 24, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextFormField(
              controller: _employeeName,
              style: textTheme.bodyLarge?.copyWith(
                color: AppColors.focusedTextColor,
              ),
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      EmpAssets.personIcon,
                    ),
                  ),
                  hintText: 'Employee name',
                  hintStyle: textTheme.bodyLarge?.copyWith(
                    color: AppColors.muteText,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: AppColors.border,
                      ))),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => SizedBox(
                    height: 300,
                    width: double.maxFinite,
                    child: RoleBottomSheet(
                      onTap: (roleName) {
                        context.pop();
                        setState(() {
                          _employeeRole.text = roleName;
                        });
                      },
                    ),
                  ),
                );
              },
              readOnly: true,
              controller: _employeeRole,
              style: textTheme.bodyLarge?.copyWith(
                color: AppColors.focusedTextColor,
              ),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    EmpAssets.workIcon,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    EmpAssets.arrowDropdown,
                  ),
                ),
                hintText: 'Select Role',
                hintStyle: textTheme.bodyLarge?.copyWith(
                  color: AppColors.muteText,
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    color: AppColors.border,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onTap: () async {
                      final date = await _showDatePicker();
                      if (date != null) {
                        _startDate.text = dateTimeFormatter.format(date);
                      }
                    },
                    readOnly: true,
                    controller: _startDate,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          EmpAssets.eventIcon,
                        ),
                      ),
                      hintText: 'Today',
                      hintStyle: textTheme.bodyLarge?.copyWith(
                        color: AppColors.muteText,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: AppColors.border,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                SvgPicture.asset(
                  EmpAssets.arrowRight,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextFormField(
                    onTap: () async {
                      final date = await _showDatePicker();
                      if (date != null) {
                        _endDate.text = dateTimeFormatter.format(date);
                      }
                    },
                    readOnly: true,
                    controller: _endDate,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          EmpAssets.eventIcon,
                        ),
                      ),
                      hintText: 'No date',
                      hintStyle: textTheme.bodyLarge?.copyWith(
                        color: AppColors.muteText,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: AppColors.border,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.inactiveButton,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Text(
                      'Cancel',
                      style: textTheme.bodyMedium
                          ?.copyWith(color: AppColors.primaryColor),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final date = DateTime.now();
                      context.read<EmployeeAddBloc>()
                        ..add(
                          AddEmployee(
                            employee: Employee(
                              name: 'Phantom Boy',
                              role: 'Flutter Developer',
                              startDate: date,
                            ),
                          ),
                        )
                        ..add(
                          AddEmployee(
                            employee: Employee(
                                name: 'Harsh Chaurasia',
                                role: 'Full-Stack Developer',
                                startDate: date.subtract(Duration(days: 30)),
                                endDate: date),
                          ),
                        );
                    },
                    style: TextButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Text(
                      'Save',
                      style:
                          textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
