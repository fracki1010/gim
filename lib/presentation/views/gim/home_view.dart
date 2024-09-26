import 'package:flutter/material.dart';
import 'package:gimnasio_corpore_sano/presentation/widget/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('G I M '),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Comienzo de aplicacion'),
      ),
    );
  }
}
