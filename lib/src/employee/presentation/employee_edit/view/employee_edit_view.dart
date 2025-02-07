import 'package:employee_manager/core/index.dart'
    show showCommonDatePicker, AppColors, EmpAssets, datePickerTimeFormatter;
import 'package:employee_manager/src/employee/index.dart'
    show EditEmployeeById, Employee, EmployeeEditBloc, RoleBottomSheet;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class EmployeeEditView extends StatefulWidget {
  const EmployeeEditView({super.key, required this.employee});

  final Employee employee;

  @override
  State<EmployeeEditView> createState() => _EmployeeEditViewState();
}

class _EmployeeEditViewState extends State<EmployeeEditView> {
  late TextEditingController _employeeNameTextController;
  late TextEditingController _employeeRoleTextController;
  late TextEditingController _startDateTextController;
  late TextEditingController _endDateTextController;
  DateTime? _startDate, _endDate;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _employeeNameTextController =
        TextEditingController(text: widget.employee.name);
    _employeeRoleTextController =
        TextEditingController(text: widget.employee.role);
    final startDate = widget.employee.startDate;
    _startDateTextController = TextEditingController(
        text: datePickerTimeFormatter.format(widget.employee.startDate!));
    final endDate = widget.employee.endDate;
    _endDateTextController = TextEditingController(
        text: endDate != null ? datePickerTimeFormatter.format(endDate) : null);
    _startDate = startDate;
    _endDate = endDate;
  }

  @override
  void dispose() {
    _employeeNameTextController.dispose();
    _employeeRoleTextController.dispose();
    _startDateTextController.dispose();
    _endDateTextController.dispose();
    super.dispose();
  }

  void _resetFields() {
    _employeeNameTextController.text = '';
    _employeeRoleTextController.text = '';
    _startDateTextController.text = '';
    _endDateTextController.text = '';
    _startDate = null;
    _endDate = null;
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
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _employeeNameTextController,
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
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? false) {
                          return 'Name is required';
                        }
                        return null;
                      },
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
                                  _employeeRoleTextController.text = roleName;
                                });
                              },
                            ),
                          ),
                        );
                      },
                      readOnly: true,
                      controller: _employeeRoleTextController,
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
                      validator: (value) {
                        if (value?.isEmpty ?? false) {
                          return 'Role is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onTap: () async {
                              final date = await showCommonDatePicker(context);
                              if (date != null) {
                                _startDate = date;
                                _startDateTextController.text =
                                    datePickerTimeFormatter.format(date);
                              }
                            },
                            readOnly: true,
                            controller: _startDateTextController,
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
                            validator: (value) {
                              if (value?.isEmpty ?? false) {
                                return 'Start date is required';
                              }
                              return null;
                            },
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
                              final date = await showCommonDatePicker(context);
                              if (date != null) {
                                _endDate = date;
                                _endDateTextController.text =
                                    datePickerTimeFormatter.format(date);
                              }
                            },
                            readOnly: true,
                            controller: _endDateTextController,
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
                  ],
                )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
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
                      if (_formKey.currentState!.validate()) {
                        context.read<EmployeeEditBloc>().add(
                              EditEmployeeById(
                                employee: Employee(
                                  id: widget.employee.id,
                                  name: _employeeNameTextController.text,
                                  role: _employeeRoleTextController.text,
                                  startDate: _startDate,
                                  endDate: _endDate,
                                ),
                              ),
                            );

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                '${widget.employee.name} has been successfully edited!'),
                          ),
                        );
                        _resetFields();
                      }
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
