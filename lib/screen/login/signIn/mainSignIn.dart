import 'package:Toza/contrains.dart';
import 'package:Toza/screen/homePage/main_homePage.dart';
import 'package:Toza/screen/login/components/btnLogin.dart';
import 'package:Toza/screen/login/signIn/components/signInWithG.dart';
import 'package:Toza/screen/login/signUp/mainSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.9],
                colors: [whitleLight, pink],
              ),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Image.asset(
                    "assets/image/logo_Chat.png",
                    height: 150,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    "Toza",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Kết nối, trao gởi yêu thương\nVì tương lai của bạn",
                    style: TextStyle(color: Colors.grey[500], fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  GestureDetector(
                    onTap: (){


                      Get.to(SignWithGoogle());
                    },
                    child: BtnLogin(
                      text: "Đăng nhập với Goolgle",
                      color: Colors.white38,
                      icon: "assets/image/google.png",
                      colorText: purpleBlue,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (){

                      Get.to(HomPageToza());

                      print("object");
                    },
                    child: BtnLogin(
                      text: "Đăng nhập với Facebook",
                      color: Color(0xff4267b2),
                      icon: "assets/image/facebook.png",
                      colorText: Colors.white,
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
       
           Positioned(
              
              
              bottom: MediaQuery.of(context).padding.bottom,

              child:  GestureDetector(
               
                child: Container(
               
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                       onTap: (){
                  print("object");
                  Get.to(SignUp());
                },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Chưa có tài khoản?",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: " Đăng ký ngay",
                                  style: TextStyle(
                                      color: pinkDark,
                                      fontWeight: FontWeight.bold))
                            ])),
                          ],
                        ),
                      ),
                    ),
                  )),
              )
              )
        ],
      ),
    );
  }
}
