import 'package:employee_manager/core/index.dart';
import 'package:employee_manager/src/employee/index.dart'
    show
        DeleteEmployeeByIdE,
        EmployeeEditBloc,
        EmployeeEditState,
        EmployeeEditView,
        FetchEmployeeById;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class EmployeeEdit extends StatelessWidget {
  const EmployeeEdit({super.key, required this.employeeId});

  final int employeeId;

  static const String routeName = '/employee/edit';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Edit Employee Details',
          style: textTheme.titleSmall,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              context
                  .read<EmployeeEditBloc>()
                  .add(DeleteEmployeeByIdE(employeeId: employeeId));
              context.pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: SvgPicture.asset(EmpAssets.deleteIcon),
            ),
          )
        ],
      ),
      body: BlocBuilder<EmployeeEditBloc, EmployeeEditState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.employee == null) {
            return Center(
              child: Text(
                'Error Fetching Employee',
                style: textTheme.bodyLarge,
              ),
            );
          }
          return EmployeeEditView(
            employee: state.employee!,
          );
        },
      ),
    );
  }
}
