import 'package:employee_manager/core/config/index.dart';
import 'package:flutter/material.dart';

import 'core/index.dart' show router;

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
