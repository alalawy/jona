import 'package:flutter/material.dart';
import 'package:jona_app/splash_screen.dart';
import 'package:jona_app/home_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jona App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => HomePage(),
        },
      debugShowCheckedModeBanner: false,
    );
  }
}