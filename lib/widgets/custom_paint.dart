import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPaintx extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..shader = const RadialGradient(
        center: Alignment(-0.9, 0.9), // Center towards bottom left
        radius: 1.0, // Increase radius to cover more area with gradient
        colors: [Color.fromARGB(255, 12, 19, 80), Color.fromARGB(255, 35, 5, 59)],
        stops: [0.4, 1.0],
      ).createShader(Offset.zero & size);

    final Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - 60); // Starting point for the circular arc

    // Draw a smooth circular arc at the bottom left corner
    path.quadraticBezierTo(0, size.height, 90, size.height);

    // Draw a line to start the snake tail at the bottom right
    path.lineTo(size.width - 120, size.height);

    // Draw a smooth curve for the snake tail at the bottom right corner
    path.cubicTo(
      size.width - 50, size.height + 0, // Control point 1 for smooth curve
      size.width - 8, size.height + 35, // Control point 2 for smooth curve
      size.width, size.height + 100, // End point of the smooth tail
    );

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}