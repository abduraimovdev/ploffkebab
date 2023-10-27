import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../bloc/product/product_bloc.dart';
import '../scop/value_notifier_scop.dart';
import 'custom_progress_indicator.dart';
import 'home_banner.dart';
import 'home_category_view.dart';

class HomeMainViewBannerProduct extends StatelessWidget {
  const HomeMainViewBannerProduct({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) => CustomScrollView(
          controller: ValueBinding.of(context).controller,
          physics: const BouncingScrollPhysics(),
          slivers: [
            CupertinoSliverRefreshControl(
              onRefresh: ValueBinding.of(context).onRefresh,
              builder: (_, __, ___, ____, _____) =>
                  const CustomProgressIndicator(),
            ),
            AppUtils.gap16,
            const SliverToBoxAdapter(
              child: HomeBanner(),
            ),
            AppUtils.gap16,
            SliverList.separated(
              itemCount: state.categoryWithProduct?.categories.length ?? 0,
              itemBuilder: (context, index) => state.categoryWithProduct!
                      .categories[index].products.isNotEmpty
                  ? AutoScrollTag(
                      key: ValueKey(index),
                      index: index,
                      controller: ValueBinding.of(context).controller,
                      child: HomeCategoryView(index: index),
                    )
                  : const Gap(0),
              separatorBuilder: (context, index) => const Gap(12),
            ),
          ],
        ),
      );
}
