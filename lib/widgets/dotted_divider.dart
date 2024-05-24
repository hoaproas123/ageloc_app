import 'package:flutter/material.dart';
class DottedDivider extends StatelessWidget {
  const DottedDivider({
    super.key,
    this.height
  });
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: height==null? 1 : height!/2,),
        CustomPaint(
          size: const Size(double.infinity, 1),
          painter: DottedLinePainter(),
        ),
        SizedBox(height: height==null? 1 : height!/2,),
      ]
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;

    double dashWidth = 1;
    double dashSpace = 10;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}