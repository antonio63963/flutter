import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static String routeName = '/mainScreen';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: Center(
        child: Text(
          "Вітаю!",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
        ),
      ),
    );
  }
}
