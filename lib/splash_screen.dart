import 'dart:async';

import 'package:flutter/material.dart';



void navigate_login(context){
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).popAndPushNamed("/home");
    });
  }

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    navigate_login(context);
    return Scaffold(
      body: Center(
          child: Container(
            child: Image.asset('assets/JonaLogo.png', width: 200,),
          ),
        ),
    );
  }
}