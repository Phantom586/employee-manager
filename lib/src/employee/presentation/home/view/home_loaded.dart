import 'package:employee_manager/core/index.dart' show AppColors;
import 'package:employee_manager/src/employee/index.dart'
    show
        DeleteEmployeeById,
        Employee,
        EmployeeHeader,
        EmployeesListView,
        HomeBloc,
        UndoDeleteEmployee;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLoadedView extends StatelessWidget {
  const HomeLoadedView({
    super.key,
    required this.currentEmployees,
    required this.previousEmployees,
    required this.scaffoldKey,
  });

  final List<Employee> currentEmployees;
  final List<Employee> previousEmployees;
  final GlobalKey<ScaffoldState> scaffoldKey;

  void _onDismissedHandler(BuildContext context, Employee employee) {
    context.read<HomeBloc>().add(DeleteEmployeeById(employeeId: employee.id!));

    BuildContext? currentContext = scaffoldKey.currentContext;
    if (currentContext != null) {
      ScaffoldMessenger.of(currentContext).showSnackBar(
        SnackBar(
          content: Text('${employee.name} has been deleted'),
          action: SnackBarAction(
            label: 'Undo',
            textColor: AppColors.primaryColor,
            onPressed: () => currentContext.read<HomeBloc>().add(
                  UndoDeleteEmployee(employee: employee),
                ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmployeeHeader(label: 'Current Employees'),
          SizedBox(
            height: size.height * 0.35,
            child: EmployeesListView(
              employees: currentEmployees,
              onDismissed: (employee) => _onDismissedHandler(
                context,
                employee,
              ),
            ),
          ),
          EmployeeHeader(label: 'Previous Employees'),
          SizedBox(
            height: size.height * 0.35,
            child: EmployeesListView(
              employees: previousEmployees,
              onDismissed: (employee) => _onDismissedHandler(
                context,
                employee,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 44,
              left: 16,
            ),
            child: Text(
              'Swipe left to delete',
              style: textTheme.bodyMedium?.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.muteText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
