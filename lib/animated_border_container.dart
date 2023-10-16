import 'package:flutter/material.dart';
import 'package:flutter_workshop_animation/code_pen_animation.dart';

class AnimatedBorderContainer extends StatefulWidget {
  @override
  _AnimatedBorderContainerState createState() =>
      _AnimatedBorderContainerState();
}

class _AnimatedBorderContainerState extends State<AnimatedBorderContainer>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          LoadWidget(),
        ],
      ),
    ));
  }
}

class AnimatedBorderPainter extends CustomPainter {
  final AnimationController controller;
  final Color color;

  AnimatedBorderPainter({
    required this.controller,
    required this.color,
  }) : super(repaint: controller);

  @override
  void paint(Canvas canvas, Size size) {
    // Get the current value of the animation.
    final animationValue = controller.value;

    // Draw the border.
    canvas.drawRect(
      Rect.fromLTWH(0.0, 0.0, size.width, size.height),
      Paint()
        ..color = color
        ..strokeWidth = 10.0
        ..style = PaintingStyle.stroke,
    );

    // Draw the border segment that has been animated so far.
    canvas.drawLine(
      Offset(0.0, 0.0),
      Offset(size.width * animationValue, 0.0),
      Paint()
        ..color = color
        ..strokeWidth = 10.0
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
