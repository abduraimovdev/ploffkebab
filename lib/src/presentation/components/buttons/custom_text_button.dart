import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.prefixIcon,
  });

  final String label;
  final Widget? prefixIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => TextButton(
        style: TextButton.styleFrom(
          backgroundColor: context.theme.primaryColor,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(
            borderRadius: AppUtils.radiusAll8,
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) prefixIcon!,
            if (prefixIcon != null) AppUtils.sizeW8,
            Text(
              label,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: context.color.secondaryText,
              ),
            ),
          ],
        ),
      );
}
