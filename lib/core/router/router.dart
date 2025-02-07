import 'package:employee_manager/core/index.dart' show getIt;
import 'package:employee_manager/src/employee/index.dart'
    show
        EmployeeAdd,
        EmployeeEdit,
        EmployeeEditBloc,
        FetchEmployeeById,
        FetchEmployees,
        HomeBloc,
        HomeView;
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
    name: EmployeeAdd.routeName,
    path: '/employee/add',
    builder: (context, state) => const EmployeeAdd(),
  ),
  GoRoute(
    name: EmployeeEdit.routeName,
    path: '/employee/edit',
    builder: (context, state) {
      final arguments = state.extra as Map<String, int?>;
      final employeeId = arguments['employeeId'];
      return BlocProvider<EmployeeEditBloc>(
        create: (context) => getIt<EmployeeEditBloc>()
          ..add(FetchEmployeeById(employeeId: employeeId)),
        child: EmployeeEdit(
          employeeId: employeeId!,
        ),
      );
    },
  ),
]);
