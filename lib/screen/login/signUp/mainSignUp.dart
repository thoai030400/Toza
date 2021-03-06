import 'package:Toza/contrains.dart';
import 'package:Toza/controller/authController.dart';
import 'package:Toza/screen/login/components/btnLogin.dart';
import 'package:Toza/screen/login/components/tfSignUp.dart';
import 'package:Toza/screen/login/signIn/mainSignIn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends GetWidget<AuthController> {
 
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
                      "T???o t??i kho???n,",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "????ng k?? ngay ????? b???t ?????u",
                      style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    TextFieldSignUpEmail(
                    
                      obscure: false,
                      lableText: "H??? v?? t??n",
                      autoFocus: false,
                      hintext: "Nh???p h??? v?? t??n",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                     Container(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        controller: emailController,
        obscureText: false,
        autofocus: false,
        decoration: InputDecoration(
          hintText:"Nh???p email",
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            labelText: "Email",
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
    ),SizedBox(
                      height: 20,
                    ),
    Container(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
     
        controller: passwordController,
        obscureText: false,
        autofocus: false,
        decoration: InputDecoration(
           hintText:"Nh???p email",
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            labelText: "Email",
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
    )
                    // TextFieldSignUpEmail(
                    //    txtController: emailController,
                    //   obscure: false,
                    //   lableText: "Email",
                    //   autoFocus: false,
                    //   hintext: "Nh???p email",
                    // ),
                    ,
                    SizedBox(
                      height: 20,
                    ),


                    // TextFieldSignUpPassword(
                    //   obscure: true,
                    //   lableText: "M???t kh???u",
                    //   autoFocus: false,
                    //   hintext: "Nh???p m???t kh???u ",
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    GestureDetector(
                      onTap: (){
                      
                       controller.createUser(emailController.text, passwordController.text);

                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [pinkDark, pink])),
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
                    GestureDetector(

                      onTap: (){
                        Get.snackbar("TThoai mu???n n??i","Y??u ZaaLink");
                      },
                      child: BtnLogin(
                        text: "????ng nh???p v???i Facebook",
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
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(SignIn());
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
                                text: "???? c?? t??i kho???n?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: " ????ng nh???p",
                                style: TextStyle(
                                    color: pinkDark,
                                    fontWeight: FontWeight.bold))
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
