import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/presentation/components/shimmers/product_img_shimmer.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../bloc/detail/detail_bloc.dart';
import 'circle_button.dart';
import 'custom_container.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
    required this.innerBoxIsScrolled,
    required this.imgUrl,
    required this.backPressed,
    required this.sharePressed,
    required this.title,
  });

  final String imgUrl;
  final String title;
  final void Function() backPressed;
  final void Function() sharePressed;
  final bool innerBoxIsScrolled;

  @override
  Widget build(BuildContext context) => SliverAppBar(
        pinned: true,
        expandedHeight: 240,
        title: Visibility(
          visible: innerBoxIsScrolled,
          child: Text(title),
        ),
        actions: [
          Padding(
            padding: AppUtils.paddingRight16,
            child: CircleButton(
              onPressed: sharePressed,
              child: Icon(
                Icons.share,
                color: context.color.secondText,
                size: 24,
              ),
            ),
          ),
        ],
        leadingWidth: 66,
        leading: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CircleButton(
                onPressed: backPressed,
                child: Icon(
                  Icons.chevron_left_rounded,
                  color: context.color.secondText,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: BlocBuilder<DetailBloc, DetailState>(
            builder: (context, state) => Stack(
              children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                  imageUrl: Constants.imageUrl + (state.detail?.image ?? ''),
                  placeholder: (context, url) => Padding(
                    padding: AppUtils.paddingSH80V60,
                    child: const ShimmerProductImg(),
                  ),
                  errorWidget: (context, url, error) => Padding(
                    padding: AppUtils.paddingSH80V60,
                    child: const ShimmerProductImg(),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CContainer(
                    width: double.infinity,
                    height: 16,
                    decoration: BoxDecoration(
                      color: context.color.secondaryBackground,
                      borderRadius: AppUtils.kRadiusTLR12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
