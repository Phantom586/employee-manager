import 'package:employee_manager/core/index.dart' show getIt;
import 'package:employee_manager/src/employee/index.dart'
    show EmployeeAddBloc, EmployeeAddState;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'employee_add_view.dart';

class EmployeeAddView extends StatelessWidget {
  const EmployeeAddView({super.key});

  static const String routeName = '/employee/add';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => getIt<EmployeeAddBloc>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Add Employee Details',
            style: textTheme.titleSmall,
          ),
        ),
        body: BlocBuilder<EmployeeAddBloc, EmployeeAddState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return BlocProvider<EmployeeAddBloc>.value(
                value: BlocProvider.of<EmployeeAddBloc>(context),
                child: EmployeeView(),
              );
            }
          },
        ),
      ),
    );
  }
}
