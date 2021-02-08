import 'package:flutter/material.dart';
import 'package:jona/constants.dart';

import '../constants.dart';

class TextH1 extends StatelessWidget {
  final text;
  final weight;

  TextH1({Key key, this.text, this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      child: new Text(
        text,
        style: TextStyle(
            fontFamily: "SFProDisplay",
            fontSize: 30,
            color: primaryTextColor,
            fontWeight: weight),
      ));
}

class TextH2 extends StatelessWidget {
  final text;
  final weight;

  TextH2({Key key, this.text, this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      child: new Text(
        text,
        style: TextStyle(
            fontFamily: "SFProDisplay",
            fontSize: 25,
            color: primaryTextColor,
            fontWeight: weight),
      ));
}

class TextH3 extends StatelessWidget {
  final text;
  final weight;

  TextH3({Key key, this.text, this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      child: new Text(
        text,
        style: TextStyle(
            fontFamily: "SFProDisplay",
            fontSize: 20,
            color: primaryTextColor,
            fontWeight: weight),
      ));
}

class TextH4 extends StatelessWidget {
  final text;
  final weight;
  final color;

  TextH4({Key key, this.text, this.weight, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      child: new Text(
        text,
        style: TextStyle(
            fontFamily: "SFProDisplay",
            fontSize: 15,
            color: color != null ? color : primaryTextColor,
            fontWeight: weight),
      ));
}

class TextH5 extends StatelessWidget {
  final text;
  final weight;

  TextH5({Key key, this.text, this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      child: new Text(
        text,
        style: TextStyle(
            fontFamily: "SFProDisplay",
            fontSize: 12,
            color: primaryTextColor,
            fontWeight: weight),
      ));
}

class TextH6 extends StatelessWidget {
  final text;
  final weight;

  TextH6({Key key, this.text, this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      child: new Text(
        text,
        style: TextStyle(
            fontFamily: "SFProDisplay",
            fontSize: 8,
            color: primaryTextColor,
            fontWeight: weight),
      ));
}

class OrangeTappedText extends StatelessWidget {
  final text;
  final VoidCallback onTap;

  OrangeTappedText({Key key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) => new InkWell(
        child: Text(
          this.text,
          style:
              TextStyle(color: gradientStartColor, fontWeight: FontWeight.w600),
        ),
        onTap: () {
          this.onTap();
        },
      );
}
