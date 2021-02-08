import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jona/masuk.dart';
import 'package:jona/widget/buttonWidget.dart';
import 'package:jona/widget/inputWidget.dart';
import 'package:jona/widget/textWidget.dart';
import 'package:jona/service/auth.dart';

class RegisterPage extends StatelessWidget {
  var authHandler = new Auth();

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController nama = new TextEditingController();
  TextEditingController alamat = new TextEditingController();
  TextEditingController sekolah = new TextEditingController();
  final firestoreInstance = FirebaseFirestore.instance;
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
                  controller: nama,
                ),
                InputWithoutIcon(
                  placeholder: "Alamat",
                  controller: alamat,
                ),
                InputWithoutIcon(
                  placeholder: "Sekolah",
                  controller: sekolah,
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
                  onPress: () async {
                    await authHandler
                        .handleSignUp(email.text, password.text)
                        .then((value) async {
                      await firestoreInstance
                          .collection("users")
                          .doc(value.uid)
                          .set({
                        "nama": "${nama.text}",
                        "alamat": "${alamat.text}",
                        "sekolah": "${sekolah.text}",
                      }).then((_) {
                        print("success!");
                      });
                      return Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          (route) => false);
                    });
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
