import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../bloc/product/product_bloc.dart';
import 'home_view_product.dart';

class SearchViewResult extends StatefulWidget {
  const SearchViewResult({super.key});

  @override
  State<SearchViewResult> createState() => _SearchViewResultState();
}

class _SearchViewResultState extends State<SearchViewResult> {
  @override
  Widget build(BuildContext context) => BlocBuilder<ProductBloc, ProductState>(
        buildWhen: (previous, current) =>
            current.status == ProductStatus.searchSuccessData,
        builder: (context, state) => ListView.builder(
          itemCount: state.findProduct.length,
          itemBuilder: (context, index) {
            final product = state.findProduct[index];
            return Padding(
              padding: AppUtils.paddingTop16,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.color.secondaryBackground,
                  borderRadius: AppUtils.radiusAll8,
                ),
                child: HomeViewProduct(
                  name: product.title.currentLang(context.locale.languageCode),
                  description: product.description
                      .currentLang(context.locale.languageCode),
                  price: product.outPrice.toString(),
                  imageUrl: product.image,
                ),
              ),
            );
          },
        ),
      );
}
