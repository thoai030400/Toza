import 'package:Toza/contrains.dart';
import 'package:Toza/screen/login/signIn/mainSignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 6;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      height: 6.0,
      width: isActive ? 24.0 : 6.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF7B51D3) : pinkDark,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: SvgPicture.asset(
                                "assets/image/wellllleeeeee.svg",
                                height: 230,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                                child: Text(
                              "Welcome ",
                              style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Ch??o m???ng b???n ?????n v???i Toza chat , C??ng xem 1 s??? t??nh n??ng c???a Toza nh??? ",
                                style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: SvgPicture.asset(
                                "assets/image/xacthuc.svg",
                                height: 230,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                                child: Text(
                              "X??c th???c",
                              style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "M???i ng?????i d??ng trong Toza ?????u ???????c x??c th???c ",
                                style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: SvgPicture.asset(
                                "assets/image/map.svg",
                                height: 230,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                                child: Text(
                              "T??m ki???m xung quanh",
                              style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Toza h??? tr??? k???t n???i ng?????i d??ng trong ph???m vi g???n nhau",
                                style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: SvgPicture.asset(
                                "assets/image/quickchat.svg",
                                height: 230,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                                child: Text(
                              "Quick Chat",
                              style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "V???i Toza, nh???n tin ch??a bao gi??? d??? d??ng ?????n v???y",
                                style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: SvgPicture.asset(
                                "assets/image/ketban.svg",
                                height: 230,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                                child: Text(
                              "K???t b???n",
                              style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "T??m ki???m b???n b?? 1 chung s??? th??ch, phong c??ch 1 c??ch d??? d??ng",
                                style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: SvgPicture.asset(
                                "assets/image/baomat.svg",
                                height: 230,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                                child: Text(
                              "B???o m???t",
                              style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Toza cam k???t m???i th??ng tin c???a ng?????i d??ng ?????u ???????c b???o m???t",
                                style: TextStyle(
                                  color: purpleBlue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ],
            ),
            _currentPage != _numPages - 1
                ? Positioned(
                    bottom: MediaQuery.of(context).padding.bottom,
                    child: GestureDetector(
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "",
                                style: TextStyle(
                                    color: purpleBlue,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Positioned(
                    bottom: MediaQuery.of(context).padding.bottom,
                    child: GestureDetector(
                      onTap: (){
                        Get.to(SignIn());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width / 1.8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: purpleBlue),
                                child: Center(
                                    child: Text(
                                  "B???t ?????u ngay",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
            _currentPage != _numPages - 1
                ? Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(SignIn());
                        print("object");
                      },
                      child: Text(
                        "B??? qua",
                        style: TextStyle(
                            color: purpleBlue, fontWeight: FontWeight.bold),
                      ),
                    ))
                : Positioned(top: 8, right: 8, child: Text("")),
          ],
        ),
      ),
    ));
  }
}
