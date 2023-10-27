import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../bloc/product/product_bloc.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  int currentBanner = 0;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.color.secondaryBackground,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) => PageView.builder(
                      itemCount: state.banner?.banners.length ?? 0,
                      onPageChanged: (value) {
                        setState(() {
                          currentBanner = value;
                        });
                      },
                      itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            context.pushNamed(Routes.bannerDetail, extra: state.banner?.banners[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              top: 16,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                                imageUrl:
                                    state.banner?.banners[index].image ?? '',
                              ),
                            ),
                          ),
                        ),
                    ),
                  ),
                ),
                AppUtils.sizeH8,
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) => DotsIndicator(
                    currentPage: currentBanner,
                    count: state.banner?.banners.length ?? 0,
                    activeColor: context.theme.primaryColor,
                    color: context.color.dotColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.currentPage,
    required this.count,
    required this.activeColor,
    required this.color,
  });

  final int currentPage;
  final int count;
  final Color activeColor;
  final Color color;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < count; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: AnimatedContainer(
                width: i == currentPage ? 16 : 4,
                height: 4,
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: i == currentPage
                      ? context.theme.primaryColor
                      : context.color.dotColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
        ],
      );
}
