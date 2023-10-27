import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/scop/value_notifier_scop.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/home_main_view_banner_product.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../bloc/product/product_bloc.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/search_result_view.dart';

part './mixin/home_mixin.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomeMixin {
  @override
  Widget build(BuildContext context) => ValueBinding(
        controller: autoScrollController,
        onRefresh: _onRefresh,
        child: Scaffold(
          backgroundColor: context.colorScheme.onBackground,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(175),
            child: HomeAppBar(onChange: setController),
          ),
          body: BlocConsumer<ProductBloc, ProductState>(
            builder: (context, state) => switch (state.status) {
              ProductStatus.successData => const HomeMainViewBannerProduct(),
              ProductStatus.searchSuccessData => const SearchViewResult(),
              _ => const SizedBox(),
            },
            listener: (context, state) {},
          ),
        ),
      );
}
