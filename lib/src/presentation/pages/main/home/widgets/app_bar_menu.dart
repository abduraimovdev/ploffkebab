import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/scop/value_notifier_scop.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../../bloc/product/product_bloc.dart';

class AppBarMenu extends StatefulWidget {
  const AppBarMenu({
    super.key,
    required this.onChange,
  });

  final void Function(TabController controller) onChange;

  @override
  State<AppBarMenu> createState() => _AppBarMenuState();
}

class _AppBarMenuState extends State<AppBarMenu> with TickerProviderStateMixin {
  late TabController controller = TabController(length: 0, vsync: this);

  @override
  Widget build(BuildContext context) => BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state.status == ProductStatus.successData) {
            controller = TabController(
              length: state.categoryWithProduct?.categories
                      .where((e) => e.products.isNotEmpty)
                      .toList()
                      .length ??
                  0,
              vsync: this,
            );
            widget.onChange(controller);
          }
          return SizedBox(
            height: 40,
            child: Stack(
              children: [
                if (state.status == ProductStatus.successData)
                  TabBar(
                    isScrollable: true,
                    controller: controller,
                    onTap: (value) {
                      ValueBinding.of(context).controller.scrollToIndex(
                            controller.index,
                            preferPosition: AutoScrollPosition.begin,
                          );
                    },
                    tabs: state.categoryWithProduct?.categories
                            .where((e) => e.products.isNotEmpty)
                            .toList()
                            .map(
                              (e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Tab(
                                  text: e.title
                                      .currentLang(context.locale.languageCode),
                                ),
                              ),
                            )
                            .toList() ??
                        [],
                  ),
              ],
            ),
          );
        },
      );
}
