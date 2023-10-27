
import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';
import '../../../../core/utils/utils.dart';

class CustomLangButton extends StatelessWidget {
  const CustomLangButton({
    super.key,
    required this.image,
    required this.label,
    required this.onPressed,
  });

  final void Function() onPressed;
  final String image;
  final String label;

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: AppUtils.kPaddingHorizontal16,
      backgroundColor: ThemeColors.light.secondaryElevatedButtonBackground,
      minimumSize: const Size(double.infinity, 64),
      shape: RoundedRectangleBorder(
        borderRadius: AppUtils.radiusAll8,
      )
    ),
    onPressed: onPressed,
    child: Row(
      children: [
        Image.asset(
          image,
          width: 32,
          height: 32,
        ),
        AppUtils.sizeW12,
        Text(
          label,
          style: TextStyle(
            color: ThemeColors.light.secondaryText,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}