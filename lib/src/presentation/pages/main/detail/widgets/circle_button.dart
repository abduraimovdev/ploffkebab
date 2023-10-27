import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) => IconButton(
        style: TextButton.styleFrom(
          fixedSize: const Size(40, 40),
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white.withOpacity(0.8),
        ),
        onPressed: onPressed,
        icon: child,
      );
}
