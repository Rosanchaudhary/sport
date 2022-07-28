import 'package:flutter/material.dart';
import 'package:sport/screens/main_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MainScreen()));
      },
      child: Stack(
        children: [
          Container(
            color: Colors.transparent,
            child: CustomPaint(
              size: MediaQuery.of(context).size,
              painter: BottomPainter(),
            ),
          ),
          Container(
            color: Colors.transparent,
            child: CustomPaint(
              size: MediaQuery.of(context).size,
              painter: TopPainter(),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: MediaQuery.of(context).size.width * 0.2,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(350 / 360),
              child: Column(
                children: const [
                  Text(
                    "LIVE FAIR",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                  ),
                  Text(
                    'SPORTS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class TopPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color.fromRGBO(255, 179, 0, 1);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.20);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class BottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color.fromRGBO(255, 179, 0, 1);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, size.height * 0.70);
    path.lineTo(0, size.height * 0.80);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
