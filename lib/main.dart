import 'package:flutter/material.dart';

import 'core/index.dart'
    show initDepedencyLocator, router, getIt, applicationTheme;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDepedencyLocator();
  await getIt.allReady();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: applicationTheme(),
    );
  }
}
