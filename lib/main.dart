import 'package:flutter/material.dart';
import 'package:gimnasio_corpore_sano/config/router/app_router.dart';
import 'package:gimnasio_corpore_sano/config/theme/app_theme.dart';
import 'package:gimnasio_corpore_sano/presentation/views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MainApp(
      title: 'Gim',
    );
  }
}

class MainApp extends StatelessWidget {
  final String title;

  const MainApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: title,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
