import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jona_app/masuk.dart';
import 'package:jona_app/widget/buttonWidget.dart';
import 'package:jona_app/widget/inputWidget.dart';
import 'package:jona_app/widget/textWidget.dart';
import 'package:jona_app/service/auth.dart';

class RegisterPage extends StatelessWidget {
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
                  placeholder: "Nama",
                ),
                InputWithoutIcon(
                  placeholder: "Alamat",
                ),
                InputWithoutIcon(
                  placeholder: "Sekolah",
                ),
                InputWithoutIcon(
                  placeholder: "Email",
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                ),
                InputWithoutIcon(
                  placeholder: "Password",
                  controller: password,
                  obscureText: true,
                ),
                SizedBox(height: 32),
                ButtonOrange(
                  text: "REGISTRASI",
                  onPress: (){
                    authHandler.handleSignUp(email.text, password.text).then((value) => Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                              (route) => false));
                  },
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextH4(text: "Sudah punya akun?"),
                    OrangeTappedText(
                        text: "Masuk",
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
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
