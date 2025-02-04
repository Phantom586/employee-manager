import 'package:employee_manager/presentation/employee_add/index.dart'
    show EmployeeAddView;
import 'package:employee_manager/presentation/employee_edit/index.dart'
    show EmployeeEditView;
import 'package:employee_manager/presentation/home/index.dart' show HomeView;
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
