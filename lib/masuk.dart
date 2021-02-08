import 'package:flutter/material.dart';
import 'package:jona_app/register.dart';
import 'package:jona_app/service/auth.dart';
import 'package:jona_app/widget/buttonWidget.dart';
import 'package:jona_app/widget/inputWidget.dart';
import 'package:jona_app/widget/textWidget.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  var authHandler = new Auth();

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              children: [
                Image.asset(
                  "assets/JonaLogo.png",
                  width: 150,
                ),
                SizedBox(height: 32),
                InputWithoutIcon(
                  placeholder: "Email",
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                ),
                InputWithoutIcon(
                  placeholder: "Password",
                  obscureText: true,
                  controller: password,
                ),
                SizedBox(height: 32),
                ButtonOrange(
                  text: "MASUK",
                  onPress: () {
                    authHandler
                        .handleSignInEmail(email.text, password.text)
                        .then((value) => value != null ? Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                            (route) => false) : CircularProgressIndicator());
                  },
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextH4(text: "Belum punya akun?"),
                    OrangeTappedText(
                        text: "Daftar",
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()),
                              (route) => false);
                        })
                  ],
                )
              ],
            ),
          ),
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
