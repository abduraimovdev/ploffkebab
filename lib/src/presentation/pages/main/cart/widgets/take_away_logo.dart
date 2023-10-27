import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class TakeAwayLogo extends StatelessWidget {
  const TakeAwayLogo({super.key});

  @override
  Widget build(BuildContext context) => CustomPaint(
        size: const Size(104, 104),
        painter: RPSCustomPainter(),
      );
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path_0 = Path()
      ..moveTo(size.width * 0.9696538, size.height * 0.4973760)
      ..lineTo(size.width * 0.8132702, size.height * 0.2599183)
      ..lineTo(size.width * 0.1876375, size.height * 0.2599183)
      ..lineTo(size.width * 0.03125000, size.height * 0.4973760)
      ..lineTo(size.width * 0.03125000, size.height * 0.9575808)
      ..cubicTo(
          size.width * 0.03125000,
          size.height * 0.9810096,
          size.width * 0.05023952,
          size.height,
          size.width * 0.07366942,
          size.height)
      ..lineTo(size.width * 0.9272385, size.height)
      ..cubicTo(
          size.width * 0.9506683,
          size.height,
          size.width * 0.9696538,
          size.height * 0.9810096,
          size.width * 0.9696538,
          size.height * 0.9575808)
      ..lineTo(size.width * 0.9696538, size.height * 0.4973760)
      ..close();

    final Paint paint0Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.2891038, size.height * 0.4484202),
          Offset(size.width * 1.156558, size.height * 1.541077), [
        const Color(0xffFFD459).withOpacity(1),
        const Color(0xffFFD355).withOpacity(1),
        const Color(0xffFFCF4A).withOpacity(1),
        const Color(0xffFFC838).withOpacity(1),
        const Color(0xffFFBF1F).withOpacity(1),
        const Color(0xffFFB400).withOpacity(1)
      ], [
        0,
        0.2296,
        0.4362,
        0.634,
        0.825,
        1
      ]);
    canvas.drawPath(path_0, paint0Fill);

    final Path path_1 = Path()
      ..moveTo(size.width * 0.8132692, size.height * 0.2599183)
      ..lineTo(size.width * 0.7047635, size.height * 0.2599183)
      ..lineTo(size.width * 0.8611433, size.height * 0.4973760)
      ..lineTo(size.width * 0.8611433, size.height * 0.9575808)
      ..cubicTo(
          size.width * 0.8611433,
          size.height * 0.9810096,
          size.width * 0.8421538,
          size.height,
          size.width * 0.8187317,
          size.height)
      ..lineTo(size.width * 0.9272442, size.height)
      ..cubicTo(
          size.width * 0.9506663,
          size.height,
          size.width * 0.9696538,
          size.height * 0.9810096,
          size.width * 0.9696538,
          size.height * 0.9575808)
      ..lineTo(size.width * 0.9696538, size.height * 0.4973760)
      ..lineTo(size.width * 0.8132692, size.height * 0.2599183)
      ..close();

    final Paint paint1Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.8372087, size.height * 0.1951038),
          Offset(size.width * 0.8372087, size.height * 2.510990), [
        const Color(0xffE58200).withOpacity(0),
        const Color(0xffE27F04).withOpacity(0.039216),
        const Color(0xffC15D2F).withOpacity(0.466667),
        const Color(0xffAD4949).withOpacity(0.8),
        const Color(0xffA64153).withOpacity(1)
      ], [
        0,
        0.0396,
        0.4671,
        0.8016,
        1
      ]);
    canvas.drawPath(path_1, paint1Fill);

    final Path path_2 = Path()
      ..moveTo(size.width * 0.8132702, size.height * 0.2599183)
      ..lineTo(size.width * 0.1876375, size.height * 0.2599183)
      ..lineTo(size.width * 0.03125000, size.height * 0.4973760)
      ..lineTo(size.width * 0.9696538, size.height * 0.4973760)
      ..lineTo(size.width * 0.8132702, size.height * 0.2599183)
      ..close();

    final Paint paint2Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.3681894, size.height * 0.3252615),
          Offset(size.width * 1.571990, size.height * 1.513808), [
        const Color(0xffE58200).withOpacity(0),
        const Color(0xffE27F04).withOpacity(0.039216),
        const Color(0xffC15D2F).withOpacity(0.466667),
        const Color(0xffAD4949).withOpacity(0.8),
        const Color(0xffA64153).withOpacity(1)
      ], [
        0,
        0.0396,
        0.4671,
        0.8016,
        1
      ]);
    canvas.drawPath(path_2, paint2Fill);

    final Path path_3 = Path()
      ..moveTo(size.width * 0.7217163, 0)
      ..lineTo(size.width * 0.2791885, 0)
      ..cubicTo(
          size.width * 0.2286288,
          0,
          size.width * 0.1876365,
          size.height * 0.04100038,
          size.width * 0.1876365,
          size.height * 0.09156038)
      ..lineTo(size.width * 0.1876365, size.height * 0.2599183)
      ..lineTo(size.width * 0.8132692, size.height * 0.2599183)
      ..lineTo(size.width * 0.8132692, size.height * 0.09156038)
      ..cubicTo(size.width * 0.8132692, size.height * 0.04100038,
          size.width * 0.7722769, 0, size.width * 0.7217163, 0)
      ..close()
      ..moveTo(size.width * 0.6131654, size.height * 0.1216202)
      ..cubicTo(
          size.width * 0.6057952,
          size.height * 0.1289673,
          size.width * 0.5956183,
          size.height * 0.1335221,
          size.width * 0.5843798,
          size.height * 0.1335221)
      ..lineTo(size.width * 0.3186096, size.height * 0.1335221)
      ..cubicTo(
          size.width * 0.2961260,
          size.height * 0.1335221,
          size.width * 0.2779221,
          size.height * 0.1153106,
          size.width * 0.2779221,
          size.height * 0.09282683)
      ..cubicTo(
          size.width * 0.2779221,
          size.height * 0.08158875,
          size.width * 0.2824692,
          size.height * 0.07141115,
          size.width * 0.2898240,
          size.height * 0.06403346)
      ..cubicTo(
          size.width * 0.2971942,
          size.height * 0.05668644,
          size.width * 0.3073721,
          size.height * 0.05213163,
          size.width * 0.3186096,
          size.height * 0.05213163)
      ..lineTo(size.width * 0.5843798, size.height * 0.05213163)
      ..cubicTo(
          size.width * 0.6068635,
          size.height * 0.05213163,
          size.width * 0.6250750,
          size.height * 0.07034298,
          size.width * 0.6250750,
          size.height * 0.09282683)
      ..cubicTo(
          size.width * 0.6250750,
          size.height * 0.1040654,
          size.width * 0.6205202,
          size.height * 0.1142423,
          size.width * 0.6131654,
          size.height * 0.1216202)
      ..close();

    final Paint paint3Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.2577452, size.height * -8.592904),
          Offset(size.width * 0.6748048, size.height * 0.3311298), [
        const Color(0xffFFD459).withOpacity(1),
        const Color(0xffFFD355).withOpacity(1),
        const Color(0xffFFCF4A).withOpacity(1),
        const Color(0xffFFC838).withOpacity(1),
        const Color(0xffFFBF1F).withOpacity(1),
        const Color(0xffFFB400).withOpacity(1)
      ], [
        0,
        0.2296,
        0.4362,
        0.634,
        0.825,
        1
      ]);
    canvas.drawPath(path_3, paint3Fill);

    final Path path_4 = Path()
      ..moveTo(size.width * 0.7217183, 0)
      ..lineTo(size.width * 0.6187135, 0)
      ..cubicTo(
          size.width * 0.6692808,
          0,
          size.width * 0.7102740,
          size.height * 0.04099269,
          size.width * 0.7102740,
          size.height * 0.09156038)
      ..lineTo(size.width * 0.7102740, size.height * 0.2599183)
      ..lineTo(size.width * 0.8132702, size.height * 0.2599183)
      ..lineTo(size.width * 0.8132702, size.height * 0.09156038)
      ..cubicTo(size.width * 0.8132702, size.height * 0.04099269,
          size.width * 0.7722779, 0, size.width * 0.7217183, 0)
      ..close();

    final Paint paint4Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.7159942, size.height * 0.1691260),
          Offset(size.width * 0.7159942, size.height * 0.5468058), [
        const Color(0xffE58200).withOpacity(0),
        const Color(0xffE27F04).withOpacity(0.039216),
        const Color(0xffC15D2F).withOpacity(0.466667),
        const Color(0xffAD4949).withOpacity(0.8),
        const Color(0xffA64153).withOpacity(1)
      ], [
        0,
        0.0396,
        0.4671,
        0.8016,
        1
      ]);
    canvas.drawPath(path_4, paint4Fill);

    final Path path_5 = Path()
      ..moveTo(size.width * 0.03125000, size.height * 0.8036654)
      ..lineTo(size.width * 0.03125000, size.height * 0.9575808)
      ..cubicTo(
          size.width * 0.03125000,
          size.height * 0.9810096,
          size.width * 0.05023952,
          size.height,
          size.width * 0.07366942,
          size.height)
      ..lineTo(size.width * 0.9272385, size.height)
      ..cubicTo(
          size.width * 0.9506683,
          size.height,
          size.width * 0.9696538,
          size.height * 0.9810096,
          size.width * 0.9696538,
          size.height * 0.9575808)
      ..lineTo(size.width * 0.9696538, size.height * 0.8036654)
      ..lineTo(size.width * 0.03125000, size.height * 0.8036654)
      ..close();

    final Paint paint5Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.5004538, size.height * 0.9443913),
          Offset(size.width * 0.5004538, size.height * 1.193683), [
        const Color(0xffE58200).withOpacity(0),
        const Color(0xffE27F04).withOpacity(0.039216),
        const Color(0xffC15D2F).withOpacity(0.466667),
        const Color(0xffAD4949).withOpacity(0.8),
        const Color(0xffA64153).withOpacity(1)
      ], [
        0,
        0.0396,
        0.4671,
        0.8016,
        1
      ]);
    canvas.drawPath(path_5, paint5Fill);

    final Path path_6 = Path()
      ..moveTo(size.width * 0.3853308, size.height * 0.6547923)
      ..lineTo(size.width * 0.7305308, size.height)
      ..lineTo(size.width * 0.8821413, size.height)
      ..cubicTo(
          size.width * 0.9055712,
          size.height,
          size.width * 0.9245615,
          size.height * 0.9810096,
          size.width * 0.9245615,
          size.height * 0.9575808)
      ..lineTo(size.width * 0.9245615, size.height * 0.6460423)
      ..lineTo(size.width * 0.5384375, size.height * 0.2599183)
      ..lineTo(size.width * 0.3722769, size.height * 0.2599183)
      ..lineTo(size.width * 0.3722769, size.height * 0.6347885)
      ..cubicTo(
          size.width * 0.3722769,
          size.height * 0.6437298,
          size.width * 0.3776481,
          size.height * 0.6514058,
          size.width * 0.3853308,
          size.height * 0.6547923)
      ..close();

    final Paint paint6Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.6386596, size.height * 0.6313663),
          Offset(size.width * -47.01952, size.height * 0.2575087), [
        const Color(0xffE58200).withOpacity(0),
        const Color(0xffE27F04).withOpacity(0.039216),
        const Color(0xffC15D2F).withOpacity(0.466667),
        const Color(0xffAD4949).withOpacity(0.8),
        const Color(0xffA64153).withOpacity(1)
      ], [
        0,
        0.0396,
        0.4671,
        0.8016,
        1
      ]);
    canvas.drawPath(path_6, paint6Fill);

    final Path path_7 = Path()
      ..moveTo(size.width * 0.5165644, size.height * 0.6566615)
      ..lineTo(size.width * 0.3941500, size.height * 0.6566615)
      ..cubicTo(
          size.width * 0.3820731,
          size.height * 0.6566615,
          size.width * 0.3722769,
          size.height * 0.6468731,
          size.width * 0.3722769,
          size.height * 0.6347885)
      ..lineTo(size.width * 0.3722769, size.height * 0.2599183)
      ..lineTo(size.width * 0.5384375, size.height * 0.2599183)
      ..lineTo(size.width * 0.5384375, size.height * 0.6347885)
      ..cubicTo(
          size.width * 0.5384375,
          size.height * 0.6468731,
          size.width * 0.5286413,
          size.height * 0.6566615,
          size.width * 0.5165644,
          size.height * 0.6566615)
      ..close();

    final Paint paint7Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.3774827, size.height * 0.3641577),
          Offset(size.width * 0.7720731, size.height * 0.8068288), [
        const Color(0xffFF6E3A).withOpacity(1),
        const Color(0xffFF6440).withOpacity(1),
        const Color(0xffFF4B52).withOpacity(1),
        const Color(0xffFF216E).withOpacity(1),
        const Color(0xffFF0084).withOpacity(1)
      ], [
        0,
        0.1596,
        0.4266,
        0.7662,
        1
      ]);
    canvas.drawPath(path_7, paint7Fill);

    final Path path_8 = Path()
      ..moveTo(size.width * 0.09676442, size.height * 0.6856990)
      ..lineTo(size.width * 0.3206183, size.height * 0.6856990)
      ..lineTo(size.width * 0.3206183, size.height * 0.7244260)
      ..lineTo(size.width * 0.09676442, size.height * 0.7244260)
      ..lineTo(size.width * 0.09676442, size.height * 0.6856990)
      ..close();

    final Paint paint8Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.09676346, size.height * 0.7050606),
          Offset(size.width * 0.3206231, size.height * 0.7050606), [
        const Color(0xff45425A).withOpacity(1),
        const Color(0xff2D3251).withOpacity(1)
      ], [
        0,
        1
      ]);
    canvas.drawPath(path_8, paint8Fill);

    final Path path_9 = Path()
      ..moveTo(size.width * 0.09676442, size.height * 0.7813952)
      ..lineTo(size.width * 0.3206183, size.height * 0.7813952)
      ..lineTo(size.width * 0.3206183, size.height * 0.8201221)
      ..lineTo(size.width * 0.09676442, size.height * 0.8201221)
      ..lineTo(size.width * 0.09676442, size.height * 0.7813952)
      ..close();

    final Paint paint9Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.09676346, size.height * 0.8007596),
          Offset(size.width * 0.3206231, size.height * 0.8007596), [
        const Color(0xff45425A).withOpacity(1),
        const Color(0xff2D3251).withOpacity(1)
      ], [
        0,
        1
      ]);
    canvas.drawPath(path_9, paint9Fill);

    final Path path_10 = Path()
      ..moveTo(size.width * 0.09676442, size.height * 0.8770904)
      ..lineTo(size.width * 0.2750173, size.height * 0.8770904)
      ..lineTo(size.width * 0.2750173, size.height * 0.9158173)
      ..lineTo(size.width * 0.09676442, size.height * 0.9158173)
      ..lineTo(size.width * 0.09676442, size.height * 0.8770904)
      ..close();

    final Paint paint10Fill = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.09676346, size.height * 0.8964567),
          Offset(size.width * 0.2750221, size.height * 0.8964567), [
        const Color(0xff45425A).withOpacity(1),
        const Color(0xff2D3251).withOpacity(1)
      ], [
        0,
        1
      ]);
    canvas.drawPath(path_10, paint10Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
