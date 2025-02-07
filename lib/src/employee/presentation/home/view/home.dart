import 'package:employee_manager/core/index.dart'
    show AppColors, EmpAssets, getIt;
import 'package:employee_manager/src/employee/index.dart'
    show EmployeeAdd, FetchEmployees, HomeBloc, HomeState;
import 'package:employee_manager/src/employee/presentation/home/view/home_loaded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const String routeName = '/';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      key: _scaffoldKey,
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
          context.pushNamed(EmployeeAdd.routeName).then(
                (value) => context.read<HomeBloc>().add(FetchEmployees()),
              );
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
          }
          if (state.currentEmployees.isEmpty &&
              state.previousEmployees.isEmpty) {
            return Center(
              child: Image.asset(
                EmpAssets.placeholderImage,
              ),
            );
          }
          return HomeLoadedView(
            currentEmployees: state.currentEmployees,
            previousEmployees: state.previousEmployees,
            scaffoldKey: _scaffoldKey,
          );
        },
      ),
    );
  }
}
