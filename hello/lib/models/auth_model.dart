import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class Auth {
  void setIsAuth(bool value) async {
    final box = await Hive.openBox('auth');
    box.put('isAuth', value);
    box.compact();
    box.close();
  }

  Future<bool> getIsAuth() async {
    final box = await Hive.openBox('auth');
    final isAuth = await box.get('isAuth');
    box.compact();
    box.close();
    return isAuth;
  }
}
