import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/app_options.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/pages/main/profile/widgets/profile_item_widget.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final options = AppOptions.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(context.tr('settings'))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          // ProfileItemWidget(
          //   iconBackgroundColor: context.color.blueDark,
          //   icon: Icon(
          //     AppIcons.globe,
          //     color: context.colorScheme.onPrimary,
          //   ),
          //   title: 'Язык приложения',
          //   trailingText: context.locale.languageCode,
          //   onTap: () {
          //     customModalBottomSheet<void>(
          //       context: context,
          //       builder: (_, controller) => LanguageBottomWidget(
          //         onChanged: (lang) async {
          //           AppOptions.update(
          //             context,
          //             options.copyWith(locale: Locale(lang)),
          //           );
          //           Navigator.pop(context);
          //           await sl<LocalSource>().setLocale(lang);
          //         },
          //       ),
          //     );
          //   },
          // ),
          // AppUtils.kDivider,
          // ProfileItemWidget(
          //   iconBackgroundColor: context.color.brown,
          //   icon: Icon(
          //     AppIcons.help,
          //     color: context.colorScheme.onPrimary,
          //   ),
          //   title: 'О нас',
          //   onTap: () {
          //     context.pushNamed(Routes.aboutUs);
          //   },
          // ),
          // AppUtils.kDivider,
          // ProfileItemWidget(
          //   iconBackgroundColor: context.color.red,
          //   icon: Icon(
          //     AppIcons.call,
          //     color: context.colorScheme.onPrimary,
          //   ),
          //   title: 'Служба поддержки',
          //   onTap: () {},
          // ),
          AppUtils.kDivider,
          ProfileItemWidget(
            iconBackgroundColor: context.color.secondText,
            icon: Icon(
              AppIcons.delete,
              color: context.colorScheme.onPrimary,
            ),
            title: 'Удалить аккаунт',
            onTap: () {},
          ),
          AppUtils.kDivider,
        ],
      ),
    );
  }
}
