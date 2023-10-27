import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

import '../../../../data/models/product/product.dart';

class BannerDetailPage extends StatelessWidget {
  const BannerDetailPage({super.key, required this.banner});

  final BannerModel banner;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.colorScheme.onBackground,
        appBar: AppBar(
          title: Text(banner.title.en),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: context.color.secondaryBackground,
                borderRadius: AppUtils.radiusAll8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: AppUtils.radiusAll8,
                    child: CachedNetworkImage(
                      imageUrl: banner.image,
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: AppUtils.kPaddingAll16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          banner.title.en,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(10),
                        Text(
                          banner.about,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
