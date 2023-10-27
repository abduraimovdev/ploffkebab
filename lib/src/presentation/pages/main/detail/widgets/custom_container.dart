import 'package:flutter/material.dart';

class CContainer extends StatelessWidget {
  const CContainer({
    super.key,
    this.height,
    this.width,
    this.child,
    required this.decoration,
  });

  final double? height;
  final double? width;
  final BoxDecoration decoration;
  final Widget? child;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: decoration,
          child: child,
        ),
      );
}
