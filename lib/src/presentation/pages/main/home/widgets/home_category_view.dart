import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../bloc/product/product_bloc.dart';
import 'home_view_product.dart';

class HomeCategoryView extends StatelessWidget {
  const HomeCategoryView({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) => Padding(
        padding: AppUtils.paddingBottom16,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.color.secondaryBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) => CustomScrollView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      state.categoryWithProduct?.categories[index].title.currentLang(context.locale.languageCode) ??
                          '',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: context.color.secondText,
                      ),
                    ),
                  ),
                ),
                SliverList.separated(
                  itemCount: state.categoryWithProduct?.categories[index]
                          .products.length ??
                      0,
                  itemBuilder: (context, index) {
                    final product = state.categoryWithProduct!
                        .categories[this.index].products[index];
                    return TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: AppUtils.radiusAll8,
                        ),
                      ),
                      onPressed: () {
                        context.pushNamed(Routes.detail, extra: product.id);
                      },
                      child: HomeViewProduct(
                        name: product.title.currentLang(context.locale.languageCode),
                        description: product.description.currentLang(context.locale.languageCode),
                        price: product.outPrice.toString(),
                        imageUrl: product.image.isNotEmpty
                            ? 'https://test.cdn.delever.uz/delever/${product.image}'
                            : '',
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Padding(
                    padding: AppUtils.paddingSH16,
                    child: Divider(
                      color: context.color.secondaryText.withOpacity(0.1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
