import 'package:app/app_router.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final String title;

  MyApp({super.key, required this.title});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: title,
      routerConfig: _appRouter.config(),
    );
  }
  
}