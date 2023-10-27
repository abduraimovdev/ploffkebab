import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/data/source/local_source.dart';

import '../../../injector_container.dart';
import '../../bloc/splash/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(const SplashEvent());
  }

  @override
  Widget build(BuildContext context) => BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state.isTimerFinished) {
            if (sl<LocalSource>().lanSelected) {
              context.pushReplacementNamed(Routes.main);
            } else {
              context.pushReplacementNamed(Routes.chooseLang);
            }
          }
        },
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Scaffold(
            backgroundColor: context.color.secondaryBackground,
            body: const Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/images/ic_logo.png'),
                    width: 240,
                    height: 240,
                  ),
                ),
                Positioned(
                  bottom: 80,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 1,
                      strokeAlign: -10,
                      color: Color(0xFF9AA6AC),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
