import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';

import 'custom_container.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) => CContainer(
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.color.secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: context.color.secondaryText,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.35,
                ),
              ),
              const Gap(12),
              Text(
                description,
                style: TextStyle(
                  color: context.color.firstText,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      );
}
