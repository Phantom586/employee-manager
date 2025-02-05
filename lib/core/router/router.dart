import 'package:employee_manager/src/employee/index.dart'
    show HomeView, EmployeeAddView, EmployeeEditView;
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: '/add-employee',
    builder: (context, state) => const EmployeeEditView(),
  ),
  GoRoute(
    path: '/edit-employee',
    builder: (context, state) => const EmployeeAddView(),
  ),
]);
