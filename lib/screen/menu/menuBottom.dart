import 'package:Toza/contrains.dart';
import 'package:Toza/screen/homePageChat/main_homePageChat.dart';
import 'package:Toza/screen/menu/navybottom.dart';
import 'package:flutter/material.dart';


class MenuBottom extends StatefulWidget {
  @override
  _MenuBottomState createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  int currentIndex = 2;
final _pageController = PageController(
  initialPage: 2
);


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  GlobalKey<CurvedNavigationBarMenuState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => currentIndex = index);
          },
          children: <Widget>[
            Center(
              child: Text("GẦN TÔI"),
            ),
            Center(
              child: Text("KHUYẾN MÃI"),
            ),
            HomPageChat(),
            Center(
              child: Text("NHÓM"),
            ),
            Center(
              child: Text("CÀI ĐẶT"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBarMenu(
        key: _bottomNavigationKey,
        index: 2,
        height: 60.0,
        items: <Widget>[
          Image.asset('assets/image/loctationMenu.png',
              height: 28, color: currentIndex == 0 ? pinkDark : Colors.white ),
          Image.asset('assets/image/gifMenu.png',
              height: 25, color: currentIndex == 1 ? pinkDark : Colors.white),
          Image.asset('assets/image/chatMenu.png',
              height: 28, color: currentIndex == 2 ? pinkDark : Colors.white),
          Image.asset('assets/image/groupMenu.png',
              height: 28, color: currentIndex == 3 ? pinkDark : Colors.white),
          Image.asset('assets/image/settingMenu.png',
              height: 28, color: currentIndex == 4 ? pinkDark : Colors.white),
        ],
        color:purpleBlue ,
        buttonBackgroundColor: Colors.white,
        backgroundColor: pinkLight,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() => currentIndex = index);
          _pageController.jumpToPage(index);
        },
        letIndexChange: (index) => true,
      ),
    );
  }

  Color changeColor() {
    if (currentIndex == 2) {
      return Colors.white;
    }
  }

  Color changColorIcon() {}
}
