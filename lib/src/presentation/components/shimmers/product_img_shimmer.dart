
import 'package:flutter/material.dart';

class ShimmerProductImg extends StatelessWidget {
  const ShimmerProductImg({
    super.key,
    this.width = double.infinity,
     this.height = double.infinity,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) => CustomPaint(
        size: Size(width!, (width! * 0.686046511627907).toDouble()),
        //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainter(),
      );
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path()
      ..moveTo(size.width * 0.5577581, size.height * 0.1070632)
      ..cubicTo(
          size.width * 0.5577581,
          size.height * 0.1584973,
          size.width * 0.5318942,
          size.height * 0.2002034,
          size.width * 0.4999965,
          size.height * 0.2002034)
      ..cubicTo(
          size.width * 0.4681000,
          size.height * 0.2002034,
          size.width * 0.4422349,
          size.height * 0.1584973,
          size.width * 0.4422349,
          size.height * 0.1070632)
      ..cubicTo(
          size.width * 0.4422349,
          size.height * 0.05562915,
          size.width * 0.5577581,
          size.height * 0.05562915,
          size.width * 0.5577581,
          size.height * 0.1070632)
      ..close();

    final Paint paint0Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffBCBCBC).withOpacity(1);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path()
      ..moveTo(size.width * 0.4999977, size.height * 0.1873881)
      ..cubicTo(
          size.width * 0.2700988,
          size.height * 0.1873881,
          size.width * 0.08372326,
          size.height * 0.4879186,
          size.width * 0.08372326,
          size.height * 0.8586322)
      ..lineTo(size.width * 0.9162733, size.height * 0.8586322)
      ..cubicTo(
          size.width * 0.9162733,
          size.height * 0.4879186,
          size.width * 0.7298977,
          size.height * 0.1873881,
          size.width * 0.4999977,
          size.height * 0.1873881)
      ..close();

    final Paint paint1Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffC6C6C6).withOpacity(1);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path()
      ..moveTo(size.width * 0.4999965, size.height * 0.1873881)
      ..cubicTo(
          size.width * 0.4805640,
          size.height * 0.1873881,
          size.width * 0.4614570,
          size.height * 0.1895898,
          size.width * 0.4427407,
          size.height * 0.1937475)
      ..cubicTo(
          size.width * 0.6455395,
          size.height * 0.2387373,
          size.width * 0.8017512,
          size.height * 0.5192407,
          size.width * 0.8017512,
          size.height * 0.8586322)
      ..lineTo(size.width * 0.9162721, size.height * 0.8586322)
      ..cubicTo(
          size.width * 0.9162721,
          size.height * 0.4879186,
          size.width * 0.7298965,
          size.height * 0.1873881,
          size.width * 0.4999965,
          size.height * 0.1873881)
      ..close();

    final Paint paint2Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffB4B4B4).withOpacity(1);
    canvas.drawPath(path_2, paint2Fill);

    final Path path_3 = Path()
      ..moveTo(size.width * 0.9656279, size.height * 0.9604441)
      ..lineTo(size.width * 0.03437047, size.height * 0.9604441)
      ..cubicTo(
          size.width * 0.01859535,
          size.height * 0.9604441,
          size.width * 0.005813953,
          size.height * 0.9398220,
          size.width * 0.005813953,
          size.height * 0.9143966)
      ..lineTo(size.width * 0.005813953, size.height * 0.8850797)
      ..cubicTo(
          size.width * 0.005813953,
          size.height * 0.8596542,
          size.width * 0.01859535,
          size.height * 0.8390322,
          size.width * 0.03437047,
          size.height * 0.8390322)
      ..lineTo(size.width * 0.9656349, size.height * 0.8390322)
      ..cubicTo(
          size.width * 0.9814023,
          size.height * 0.8390322,
          size.width * 0.9941837,
          size.height * 0.8596542,
          size.width * 0.9941837,
          size.height * 0.8850797)
      ..lineTo(size.width * 0.9941837, size.height * 0.9143966)
      ..cubicTo(
          size.width * 0.9941837,
          size.height * 0.9398220,
          size.width * 0.9814023,
          size.height * 0.9604441,
          size.width * 0.9656279,
          size.height * 0.9604441)
      ..close();

    final Paint paint3Fill = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff9C9C9C).withOpacity(1);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
