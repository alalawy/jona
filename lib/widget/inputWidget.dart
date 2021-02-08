import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jona_app/constants.dart';

class InputWithIcon extends StatelessWidget {
  final placeholder;
  final TextEditingController controller;
  final icon;

  InputWithIcon({Key key, this.placeholder, this.controller, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
        child: new Container(
          padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
            color: new Color.fromRGBO(232, 236, 241, 1),
          ),
          child: new TextField(
            controller: this.controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: this.placeholder,
              icon: this.icon,
              hintStyle: TextStyle(fontFamily: "SFProDisplay")
            ),
          ),
        ),
      );
}

class InputWithoutIcon extends StatelessWidget {
  final placeholder;
  final TextEditingController controller;
  final obscureText;
  final autoFocus;
  final keyboardType;
  final onChanged;

  InputWithoutIcon({Key key, this.placeholder, this.controller, this.obscureText, this.autoFocus, this.keyboardType, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
        child: new Container(
          padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
            color: Colors.white,
          ),
          child: new TextField(
            controller: this.controller,
            obscureText: this.obscureText != null ? this.obscureText : false,
            autofocus: this.autoFocus != null ? this.autoFocus : false,
            keyboardType: this.keyboardType != null ? this.keyboardType : TextInputType.text,
            onChanged: this.onChanged,
            style: TextStyle(fontFamily: "SFProDisplay"),
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: gradientStartColor, width: 1.0),
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: contentTextColor, width: 1.0),
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                ),
                hintText: this.placeholder,
                contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
          ),
        ),
      );
}
