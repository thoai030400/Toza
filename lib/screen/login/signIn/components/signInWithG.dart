import 'package:Toza/contrains.dart';
import 'package:Toza/controller/authController.dart';
import 'package:Toza/screen/login/components/btnLogin.dart';
import 'package:Toza/screen/login/components/tfSignUp.dart';
import 'package:Toza/screen/login/forgotPassword/mainForgotPassword.dart';
import 'package:Toza/screen/login/signUp/mainSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignWithGoogle extends GetWidget<AuthController>{
 

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                      "Ch??o m???ng,",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "????ng nh???p b???ng t??i kho???n Google c???a b???n",
                      style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.1,
                    ),
                    TextFieldSignUpEmail(
                      txtController: emailController,
                      obscure: false,
                      lableText: "Email",
                      autoFocus: false,
                      hintext: "Nh???p email",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldSignUpPassword(
                      txtController: passwordController,
                      obscure: true,
                      lableText: "M???t kh???u",
                      autoFocus: false,
                      hintext: "Nh???p m???t kh???u",
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
                            "Qu??n m???t kh???u?",
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
                          controller.login(emailController.text,passwordController.text);

                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [purpleBlue, pinkDark])),
                        child: Center(
                          child: Text("????ng nh???p",
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
                      text: "????ng nh???p v???i Facebook",
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
                                text: "Ch??a c?? t??i kho???n?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: " ????ng k??",
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
