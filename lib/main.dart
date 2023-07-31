import 'core/routes/auto_router.dart';
import 'package:flutter/material.dart';

import 'themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.light,
      routerConfig: _appRouter.config(),
    );
  }
}
