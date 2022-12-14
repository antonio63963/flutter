import 'package:flutter/material.dart';

import '../widgets/form.dart';

class StartScreen extends StatelessWidget {
  static String routeName = '/';
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: FormWidget(),
        ),
      ),
    );
  }
}
