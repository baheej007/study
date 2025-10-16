import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Paint"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            child: CustomPaint(
              painter: MasterPainter(),
              size: const Size(400, 500),
            ),
          ),
        ),
      ),
    );
  }
}

class MasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    canvas.drawRect(Rect.fromLTWH(50, 50, 200, 150), paint);

    paint.color = Colors.green;
    canvas.drawCircle(Offset(200, 300), 50, paint);

    paint.color = Colors.blue;
    canvas.drawLine(Offset(100, 400), Offset(300, 450), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}



