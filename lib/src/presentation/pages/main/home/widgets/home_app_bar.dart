import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../bloc/product/product_bloc.dart';
import 'app_bar_menu.dart';
import 'app_bar_search.dart';
import 'home_app_bar_location.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required this.onChange,
  });

  final void Function(TabController controller) onChange;

  @override
  Widget build(BuildContext context) => AppBar(
        title: const HomeAppBarLocation(),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 110),
          child: Column(
            children: [
              const AppBarSearch(),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) => switch (state.status) {
                  ProductStatus.successData => Column(
                      children: [
                        AppBarMenu(
                          onChange: onChange,
                        ),
                        AppUtils.sizeH16,
                      ],
                    ),
                  _ => const SizedBox(),
                },
              ),
            ],
          ),
        ),
      );
}
