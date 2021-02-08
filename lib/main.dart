import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jona_app/masuk.dart';
import 'package:jona_app/register.dart';
import 'package:jona_app/splash_screen.dart';
import 'package:jona_app/home_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("completed");
      setState(() {});
    });
  }
  
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
          '/register': (BuildContext context) => RegisterPage(),
          '/login': (BuildContext context) => LoginPage(),
        },
      debugShowCheckedModeBanner: false,
    );
  }
}