import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'models/auth_model.dart';
import 'screens/main_screen.dart';
import 'screens/start_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isAuth = await initialization(null);
  FlutterNativeSplash.remove();
  runApp(MyApp(isAuth));
}

Future<bool> initialization(BuildContext? context) async {
  final modelAuth = Auth();
  await Hive.initFlutter();
  await Future.delayed(const Duration(seconds: 3));
  return await modelAuth.getIsAuth();
}

class MyApp extends StatelessWidget {
  final bool isAuth;
  const MyApp(this.isAuth, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: isAuth ? MainScreen.routeName : StartScreen.routeName,
        routes: {
          StartScreen.routeName: (context) => StartScreen(),
          MainScreen.routeName: (context) => MainScreen(),
        });
  }
}
