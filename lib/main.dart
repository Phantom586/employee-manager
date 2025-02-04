import 'package:employee_manager/config/dependency_locator.dart';
import 'package:employee_manager/config/styles.dart';
import 'package:employee_manager/router/router.dart';
import 'package:flutter/material.dart';

void main() async {
  initDependencyLocator();
  await getIt.allReady();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        primaryColor: primaryColor,
        primaryColorDark: primaryColorDark,
      ),
    );
  }
}
