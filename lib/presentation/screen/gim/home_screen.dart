import 'package:flutter/material.dart';
import 'package:gimnasio_corpore_sano/presentation/views/views.dart';
import 'package:gimnasio_corpore_sano/presentation/widget/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  final int pageIndex;

  const HomeScreen({super.key, required this.pageIndex});

  final viewRoutes = const <Widget>[
    HomeView(),
    RoutineView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: pageIndex,
          children: viewRoutes,
        ),
      ),
      bottomNavigationBar: CustomButtomNavigation(currentIndex: pageIndex),
    );
  }
}
