import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/pages/main/cart/widgets/take_away_logo.dart';

import '../../../components/buttons/custom_text_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: context.color.firstTextFieldBackground,
      appBar: AppBar(
        backgroundColor: context.color.secondaryBackground,
        title: const Text(
          'Корзина',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(AppIcons.delete)),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TakeAwayLogo(),
                AppUtils.sizeH24,
                const Text('В корзине пока нет продукты'),
              ],
            ),
          ),
          Padding(
            padding: AppUtils.paddingAll16,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomTextButton(
                label: 'Добавить продукт',
                prefixIcon: Icon(
                  Icons.add,
                  color: context.color.secondaryText,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
}
