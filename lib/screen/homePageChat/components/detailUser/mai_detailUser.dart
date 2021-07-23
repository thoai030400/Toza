import 'dart:math';

import 'package:Toza/contrains.dart';
import 'package:flutter/material.dart';

class MainDetailUser extends StatefulWidget {
  @override
  _MainDetailUserState createState() => _MainDetailUserState();
}

class _MainDetailUserState extends State<MainDetailUser>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));

    final curvendAnimation = CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutCubic);

    _animation =
        Tween<double>(begin: 0, end: pi + pi / 2).animate(curvendAnimation)
          ..addListener(() {
            setState(() {});
          });

    _animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomPaint(
              painter: CircleProfile(null, Colors.grey[200], true),
            ),
            SizedBox(width: 30,),
            CustomPaint(
              painter: CircleProfile(_animation.value, Colors.redAccent, false),
            ),
          
          ],
        ),
      ),
    );
  }
}

final Gradient gradient = new LinearGradient(colors: <Color>[
  pink1,
  pinkDark,
  purpleBlue,
]);

class CircleProfile extends CustomPainter {
  bool isBackGround;

  double arc;
  Color progressColor;
  CircleProfile(
    this.arc,
    this.progressColor,
    this.isBackGround,
  );
  @override
  void paint(Canvas canvas, Size size) {
     Offset center = Offset(size.width / 2, size.height / 2);
    final rect = Rect.fromLTRB(0, 0, 150, 150);
    final starAngle = pi - pi / 4;
    final sweepAngle = arc != null ? arc : pi + pi / 2;
    final userCenter = false;

    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15;
    if (isBackGround == false) {
      paint.shader = gradient.createShader(rect);
    }
    canvas.drawArc(rect, starAngle, sweepAngle, userCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// class CircleProgress extends CustomPainter {
//   double currentProgress;
//   CircleProgress(this.currentProgress);
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..strokeWidth = 20
//       ..color = Colors.grey
//       ..style = PaintingStyle.stroke;

//     Offset center = Offset(size.width / 2, size.height / 2);
//     double radius = 80;
//     canvas.drawCircle(center, radius, paint);
//     Paint paintAnimationArc = Paint()
//       ..strokeWidth = 17
//       ..color = Colors.red
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;

//     double angle = pi * currentProgress / 100;
//     canvas.drawCircle(center, radius, paint);
//     canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi ,
//         angle, false, paintAnimationArc);
//    paint.shader = gradient.createShader(Rect.fromCircle(center: center, radius: radius));
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
