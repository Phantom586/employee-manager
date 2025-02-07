import 'package:employee_manager/core/index.dart' show AppColors, EmpAssets;
import 'package:employee_manager/src/employee/index.dart'
    show Employee, EmployeeEdit, FetchEmployees, HomeBloc, ListItem;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class EmployeesListView extends StatelessWidget {
  const EmployeesListView(
      {super.key, required this.employees, required this.onDismissed});

  final List<Employee> employees;
  final Function(Employee employee) onDismissed;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: employees.length,
      separatorBuilder: (context, index) => Container(
        color: AppColors.inactiveButton,
        height: 1,
      ),
      itemBuilder: (context, index) {
        final currentEmployee = employees[index];

        return Dismissible(
          key: UniqueKey(),
          background: Container(
            color: Colors.red,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SvgPicture.asset(EmpAssets.deleteIcon),
              ),
            ),
          ),
          dismissThresholds: {
            DismissDirection.endToStart: 0.2,
          },
          confirmDismiss: (direction) async {
            if (direction == DismissDirection.endToStart) {
              return true;
            }
            return false;
          },
          onDismissed: (direction) {
            onDismissed(currentEmployee);
          },
          child: GestureDetector(
            onTap: () => context.pushNamed(EmployeeEdit.routeName, extra: {
              "employeeId": currentEmployee.id,
            }).then(
              (value) => context.read<HomeBloc>().add(FetchEmployees()),
            ),
            child: ListItem(employee: currentEmployee),
          ),
        );
      },
    );
  }
}
