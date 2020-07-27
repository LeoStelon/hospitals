import 'package:flutter/material.dart';
import 'package:hospitals/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff47bac1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'mainscreen',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
