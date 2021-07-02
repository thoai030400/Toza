import 'package:Toza/contrains.dart';
import 'package:Toza/screen/login/components/btnLogin.dart';
import 'package:Toza/screen/login/components/tfSignUp.dart';
import 'package:Toza/screen/login/forgotPassword/mainForgotPassword.dart';
import 'package:Toza/screen/login/signUp/mainSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignWithGoogle extends StatefulWidget {
  @override
  _SignWithGoogleState createState() => _SignWithGoogleState();
}

class _SignWithGoogleState extends State<SignWithGoogle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black12,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Text(
                      "Chào mừng,",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Đăng nhập bằng tài khoản Google của bạn",
                      style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.1,
                    ),
                    TextFieldSignUpEmail(
                      obscure: false,
                      lableText: "Email",
                      autoFocus: false,
                      hintext: "Nhập email",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldSignUpPassword(
                      obscure: true,
                      lableText: "Mật khẩu",
                      autoFocus: false,
                      hintext: "Nhập mật khẩu",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){

                        Get.to(ForgotPassword());
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            "Quên mật khẩu?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    GestureDetector(

                        onTap: (){
                        Get.snackbar("TThoai muốn nói","Yêu ZaaLink");
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [purpleBlue, pinkDark])),
                        child: Center(
                          child: Text("Đăng nhập",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BtnLogin(
                      text: "Đăng nhập với Facebook",
                      color: Color(0xff4267b2),
                      icon: "assets/image/facebook.png",
                      colorText: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: MediaQuery.of(context).padding.bottom,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: (){

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
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: " Đăng ký",
                                style: TextStyle(
                                    color: pinkDark, fontWeight: FontWeight.bold))
                          ])),
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
