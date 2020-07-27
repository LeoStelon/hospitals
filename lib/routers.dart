import 'package:flutter/material.dart';

import 'package:hospitals/screens/login.dart';
import 'package:hospitals/screens/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'loginscreen':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'mainscreen':
        return MaterialPageRoute(builder: (_) => MainScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Container(
              child: Center(
                child: Text('Check Route Name'),
              ),
            ),
          ),
        );
    }
  }
}
