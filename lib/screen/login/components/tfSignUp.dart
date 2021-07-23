import 'package:Toza/contrains.dart';
import 'package:flutter/material.dart';

class TextFieldSignUpEmail extends StatefulWidget {
  bool obscure = false;
  String lableText;
  bool autoFocus;
  String hintext;
   TextEditingController txtController = TextEditingController();
  TextFieldSignUpEmail({this.obscure, this.lableText,this.autoFocus,this.hintext,this.txtController});

  @override
  _TextFieldSignUpEmailState createState() => _TextFieldSignUpEmailState();
}

class _TextFieldSignUpEmailState extends State<TextFieldSignUpEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        controller: widget.txtController,
        obscureText: widget.obscure,
        autofocus: widget.autoFocus,
        decoration: InputDecoration(
          hintText: widget.hintext,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            labelText: widget.lableText,
            labelStyle: TextStyle(
              fontSize: 18
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: pinkDark),
                borderRadius: BorderRadius.circular(30)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.grey[500]),
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}

class TextFieldSignUpPassword extends StatefulWidget {
  bool obscure = false;
  String lableText;
  bool autoFocus;
   String hintext;
   TextEditingController txtController = TextEditingController();
   
  TextFieldSignUpPassword({this.obscure, this.lableText,this.autoFocus,this.hintext,this.txtController});

  @override
  _TextFieldSignUpPasswordState createState() => _TextFieldSignUpPasswordState();
}

class _TextFieldSignUpPasswordState extends State<TextFieldSignUpPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        controller: widget.txtController,
        obscureText: widget.obscure,
        autofocus: widget.autoFocus,
        decoration: InputDecoration(
           hintText: widget.hintext,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            labelText: widget.lableText,
            labelStyle: TextStyle(
              fontSize: 18
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: pinkDark),
                borderRadius: BorderRadius.circular(30)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.grey[500]),
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
