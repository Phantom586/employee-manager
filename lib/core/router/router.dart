import 'package:employee_manager/core/index.dart' show getIt;
import 'package:employee_manager/src/employee/index.dart'
    show EmployeeAddView, EmployeeEditView, FetchEmployees, HomeBloc, HomeView;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    name: HomeView.routeName,
    path: '/',
    builder: (context, state) => BlocProvider<HomeBloc>(
      create: (context) => getIt<HomeBloc>()..add(FetchEmployees()),
      child: const HomeView(),
    ),
  ),
  GoRoute(
    name: EmployeeAddView.routeName,
    path: '/employee/add',
    builder: (context, state) => const EmployeeAddView(),
  ),
  GoRoute(
    name: EmployeeEditView.routeName,
    path: '/employee/edit',
    builder: (context, state) => const EmployeeEditView(),
  ),
]);
