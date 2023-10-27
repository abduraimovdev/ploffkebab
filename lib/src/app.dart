import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/product/product_bloc.dart';

import 'app_options.dart';
import 'config/router/app_routes.dart';
import 'core/extension/extension.dart';
import 'core/l10n/app_localizations.dart';
import 'injector_container.dart';
import 'presentation/bloc/detail/detail_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                sl<ProductBloc>()..add(const ProductGetEvent()),
          ),
          BlocProvider<DetailBloc>(create: (_) => sl<DetailBloc>()),
        ],
        child: MaterialApp.router(
          /// title
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: scaffoldMessengerKey,

          /// theme style
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          // themeMode: AppOptions.of(context).themeMode,

          /// lang
          locale: AppOptions.of(context).locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,

          /// pages
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
        ),
      );
}
