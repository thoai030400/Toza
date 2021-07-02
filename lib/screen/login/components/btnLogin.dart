import 'package:flutter/material.dart';

class BtnLogin extends StatelessWidget {
  Color color;
  String text;
  String icon;
  Color colorText;
  BtnLogin({Key key, this.color, this.text, this.icon, this.colorText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: color),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: colorText,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Positioned(
            left: 10,
            top: 12,
            child: Container(
              height: 35,
              width: 35,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(icon),
              ),
            ),
          )
        ],
      ),
    );
  }
}
