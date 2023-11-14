import 'package:flutter/material.dart';

class MasterCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final zeroPointThreeH = h * .3;
    final theOtherH = h * .7;

    // Path for drawing
    final path = Path();

    // Paint for styling path
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1.3
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ReusableCustomPain extends StatelessWidget {
  const ReusableCustomPain({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 2,
      child: CustomPaint(
        painter: MasterCustomPaint(),
        child: SizedBox(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              // VourcherTileTitle(),
              // Icon(Icons.abc_sharp, size: 45),
            ],
          ),
        ),
      ),
    );
  }
}
