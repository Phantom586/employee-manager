import 'package:employee_manager/src/employee/index.dart'
    show HomeView, EmployeeAddView, EmployeeEditView;
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    name: HomeView.routeName,
    path: '/',
    builder: (context, state) => const HomeView(),
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
