import 'package:Toza/contrains.dart';
import 'package:Toza/screen/login/signIn/mainSignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SvgPicture.asset(
                      "assets/image/verifymail.svg",
                      height: 200,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Xin chào User, Chúng tôi đã gởi mã xác thực về mail:",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "user789@gmail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 20,fontWeight: FontWeight.bold),
                    ),


                    SizedBox(height: 50,),
                      GestureDetector(

                            onTap: (){
                           Get.to(SignIn());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(colors: [purpleBlue, pinkDark])),
                            child: Center(
                              child: Text("Lấy mã xác thực",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
         
                    
                  ],
                ),
              
                   Positioned(
                bottom: MediaQuery.of(context).padding.bottom,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10,right: 10),
                   ))
     
              ],
            ),
          ),
        ),
      ),
    );
  }
}
