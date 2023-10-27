import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/presentation/pages/main/map/map_page.dart';

import '../../../../../core/utils/utils.dart';

class HomeAppBarLocation extends StatelessWidget {
  const HomeAppBarLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) => TextButton(
        style: TextButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MapPage(),
              ));
        },
        child: Row(
          children: [
            // AppSvg.location.copyWith(color: AppColors.c5F5F5F),
            AppUtils.sizeW6,
            Text(
              'Массив Бешягач 19/30',
              style: TextStyle(
                color: context.color.secondText,
              ),
            ),
            AppUtils.sizeW6,
            const Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
      );
}
