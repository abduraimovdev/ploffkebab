import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/app_options.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/config/themes/app_images.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

import 'widgets/custom_lang_button.dart';

class ChooseLangPage extends StatefulWidget {
  const ChooseLangPage({super.key});

  @override
  State<ChooseLangPage> createState() => _ChooseLangPageState();
}

class _ChooseLangPageState extends State<ChooseLangPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.color.secondaryBackground,
        body: Stack(
          children: [
            Positioned(
              left: 16,
              top: 108,
              child: Image.asset(
                AppImages.logo,
                width: 148,
                height: 132,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Выберите язык:',
                    ),
                    AppUtils.sizeH12,
                    CustomLangButton(
                      image: AppImages.uz,
                      label: 'O\'zbekcha',
                      onPressed: () => nextButton('uz'),
                    ),
                    AppUtils.sizeH16,
                    CustomLangButton(
                      image: AppImages.ru,
                      label: 'Русский',
                      onPressed: () => nextButton('ru'),
                    ),
                    AppUtils.sizeH16,
                    CustomLangButton(
                      image: AppImages.en,
                      label: 'English',
                      onPressed: () => nextButton('en'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  void nextButton(String lang) {
    AppOptions.update(
      context,
      AppOptions.of(context).copyWith(
        locale: Locale(lang),
      ),
    );
    context.replaceNamed(Routes.main);
  }
}
