import 'package:flutter/material.dart';
import 'pages/screenOne.dart';
import 'pages/screenTwo.dart';
import 'pages/screenx.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "navigation demo",
      initialRoute: '/',
      routes: {
        '/':(context) => screenOne(),
        '/screen2':(context) => screenTwo(),

      },
      //  onGenerateRoute: (RouteSettings settings) {
      //  switch (settings.name) {
      //    case '/':
      //      return MaterialPageRoute(builder: (context) => screenOne());
      //    case '/screen2':
      //      return MaterialPageRoute(builder: (context) => screenTwo());
      //  }
      //  }

    );
  }
}