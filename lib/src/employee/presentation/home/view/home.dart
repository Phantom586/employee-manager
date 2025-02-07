import 'package:employee_manager/core/index.dart'
    show EmpAssets, getIt, AppColors;
import 'package:employee_manager/src/employee/index.dart'
    show EmployeeAddView, FetchEmployees, HomeBloc, HomeState;
import 'package:employee_manager/src/employee/presentation/home/view/home_loaded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider<HomeBloc>(
      create: (context) => getIt<HomeBloc>()..add(FetchEmployees()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Employee List',
            style: textTheme.titleSmall,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryColorDark,
          elevation: 0,
          onPressed: () {
            context.pushNamed(EmployeeAddView.routeName);
          },
          child: SvgPicture.asset(
            EmpAssets.plusIcon,
          ),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.currentEmployees.isNotEmpty ||
                state.previousEmployees.isNotEmpty) {
              return HomeLoadedView(
                currentEmployees: state.currentEmployees,
                previousEmployees: state.previousEmployees,
              );
            } else {
              return Center(
                child: Image.asset(
                  EmpAssets.placeholderImage,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
