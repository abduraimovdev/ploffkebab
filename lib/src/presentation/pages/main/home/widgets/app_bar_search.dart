import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/presentation/bloc/product/product_bloc.dart';

import '../../../../../core/utils/utils.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: AppUtils.paddingAll16,
        child: TextField(
          cursorColor: context.theme.primaryColor,
          onChanged: (value) {
            if(value.isNotEmpty) {
              context.read<ProductBloc>().add(ProductSearchEvent(lang: context.locale.languageCode, search: value));
            }else {
              context.read<ProductBloc>().add(const ProductGetEvent());
            }
          },
          decoration: InputDecoration(
            hintText: 'Поиск по всей еде',
            contentPadding:
                const EdgeInsets.only(left: 16, top: 10, right: 10, bottom: 10),
            filled: true,
            fillColor: context.color.firstTextFieldBackground,
            prefixIcon: const Icon(Icons.search),
            constraints: const BoxConstraints(maxHeight: 44),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      );
}
