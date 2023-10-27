import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../components/shimmers/product_img_shimmer.dart';

class HomeViewProduct extends StatelessWidget {
  const HomeViewProduct({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  final String name;
  final String description;
  final String price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) => Padding(
        padding: AppUtils.paddingSH16V10,
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: context.color.secondText,
                    ),
                  ),
                  AppUtils.sizeH2,
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: context.color.firstText,
                    ),
                  ),
                  AppUtils.sizeH8,
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: context.color.secondaryText,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: imageUrl.isNotEmpty
                      ? CachedNetworkImage(
                          imageUrl: imageUrl,
                          width: 88,
                          height: 88,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Padding(
                            padding: AppUtils.kPaddingAll16,
                            child: ShimmerProductImg(),
                          ),
                          placeholder: (context, url) => const Padding(
                            padding: AppUtils.kPaddingAll16,
                            child: ShimmerProductImg(),
                          ),
                        )
                      : const Padding(
                          padding: AppUtils.kPaddingAll8,
                          child: ShimmerProductImg(
                            width: 88,
                            height: 88,
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      );
}
