import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:gimnasio_corpore_sano/config/router/app_router.dart';
import 'package:gimnasio_corpore_sano/config/theme/app_theme.dart';

void main() async {
  //Con esto se soluciona un error mas adelante
  WidgetsFlutterBinding.ensureInitialized();

  //Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
