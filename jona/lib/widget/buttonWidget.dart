import 'package:flutter/material.dart';
import 'package:jona/constants.dart';

import '../constants.dart';

class ButtonOrange extends StatelessWidget {
  final text;
  final VoidCallback onPress;

  ButtonOrange({Key key, this.text, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
      child: new Container(
        width: 200.0,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
          color: gradientStartColor,
        ),
        child: new FlatButton(
          onPressed: () => onPress(),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ));
}

class ButtonGrey extends StatelessWidget {
  final text;
  final VoidCallback onPress;

  ButtonGrey({Key key, this.text, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
        child: new Container(
          width: 200.0,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
            color: contentTextColor,
          ),
          child: new FlatButton(
            onPressed: () => onPress(),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontFamily: "SF Pro"),
            ),
          ),
        ),
      );
}

class ButtonOrangeSmall extends StatelessWidget {
  final text;
  final VoidCallback onPress;

  ButtonOrangeSmall({Key key, this.text, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        child: new Container(
          width: 120.0,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
            color: gradientStartColor,
          ),
          child: new FlatButton(
            onPressed: () => onPress(),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontFamily: "SF Pro"),
            ),
          ),
        ),
      );
}

class ButtonGreySmall extends StatelessWidget {
  final text;
  final VoidCallback onPress;

  ButtonGreySmall({Key key, this.text, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        child: new Container(
          width: 120.0,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
            color: contentTextColor,
          ),
          child: new FlatButton(
            onPressed: () => onPress(),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontFamily: "SF Pro"),
            ),
          ),
        ),
      );
}
