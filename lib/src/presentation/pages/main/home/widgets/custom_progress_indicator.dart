
import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Stack(
      children: [
        Center(
          child: SizedBox(
            width: 29,
            height: 29,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: context.theme.primaryColor,
                  shape: BoxShape.circle),
            ),
          ),
        ),
        Center(
          child: CircularProgressIndicator(
            color: context.theme.primaryColor,
            strokeWidth: 2,
          ),
        ),
      ],
    );
}

