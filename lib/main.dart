import 'package:flutter/material.dart';
import 'get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Paint"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                child: CustomPaint(
                  painter: MasterPainter(),
                  size: const Size(400, 500),
                ),
              ),
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.play_arrow_outlined,
                size: 40,
                color: Colors.amberAccent,
              ),
            ),
          ],
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
    canvas.drawCircle(const Offset(200, 300), 50, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
