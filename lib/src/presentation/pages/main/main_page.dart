import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/injector_container.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/confirm/confirm_code_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/main/home/home_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/main/main_bloc.dart';
import 'package:ploff_kebab/src/presentation/pages/auth/auth_page.dart';
import 'package:ploff_kebab/src/presentation/pages/main/cart/cart_screen.dart';

import 'entries/entries_page.dart';
import 'home/home_page.dart';
import 'widgets/custom_bottom_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocSelector<MainBloc, MainState, BottomMenu>(
        selector: (state) => state.bottomMenu,
        builder: (_, bottomMenu) =>
            WillPopScope(
              onWillPop: () async {
                if (bottomMenu.index != 0) {
                  context
                      .read<MainBloc>()
                      .add(MainEventChanged(BottomMenu.values[0]));
                  return false;
                }
                return true;
              },
              child: BlocProvider(
                create: (context) => sl<AuthBloc>(),
                child: Scaffold(
                  body: IndexedStack(
                    index: bottomMenu.index,
                    children: const [
                      HomePage(),
                      CartPage(),
                      EntriesPage(),
                      AuthPage(),

                    ],
                  ),
                  bottomNavigationBar: CustomBottomBar(
                    currentIndex: bottomMenu.index,
                    onTap: (index) {
                      if (index == bottomMenu.index) {
                        context.read<HomeBloc>().add(
                          const HomeScroll(isScrollingTop: true),
                        );
                        return;
                      }
                      context
                          .read<MainBloc>()
                          .add(MainEventChanged(BottomMenu.values[index]));
                    },
                    onScanTap: () {},
                  ),
                ),
              ),
            ),
      );
}
