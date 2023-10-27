import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/bloc/detail/detail_bloc.dart';

import 'widgets/custom_container.dart';
import 'widgets/detail_app_bar.dart';
import 'widgets/detail_title.dart';

part './mixin/detail_mixin.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.productId});

  final String productId;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with DetailMixin {
  final controller = PrimaryScrollController(
    controller: ScrollController(),
    child: const Icon(Icons.abc),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.colorScheme.onBackground,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: DetailAppBar(
                innerBoxIsScrolled: innerBoxIsScrolled,
                imgUrl:
                    'https://statusneo.com/wp-content/uploads/2023/02/MicrosoftTeams-image551ad57e01403f080a9df51975ac40b6efba82553c323a742b42b1c71c1e45f1.jpg',
                backPressed: onTapBack,
                sharePressed: onTapShare,
                title: 'salom',
              ),
            ),
            const SliverGap(80),
          ],
          body: Column(
            children: [
              BlocBuilder<DetailBloc, DetailState>(
                builder: (context, state) {
                  if (state.status == DetailStatus.success) {
                    return DetailTitle(
                      title: state.detail!.title
                          .currentLang(context.locale.languageCode),
                      description: state.detail!.description
                          .currentLang(context.locale.languageCode),
                    );
                  }
                  return const SizedBox();
                },
              ),
              const Gap(16),
              CContainer(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.color.secondaryBackground,
                  borderRadius: AppUtils.kBorderRadius12,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'title',
                        style: TextStyle(
                          color: context.color.secondaryText,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.35,
                        ),
                      ),
                      const Gap(12),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            CustomCheckBox(
                              isActive: true,
                              type: false,
                              onChanged: print,
                            ),
                            Gap(12),
                            Text(
                              'salom',
                              style: TextStyle(
                                  color: Color(0xFF141414),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isActive,
    required this.type,
    required this.onChanged,
  });

  final bool isActive;
  final bool type;
  final void Function(bool isActive) onChanged;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => onChanged(!isActive),
        child: CContainer(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isActive
                ? context.colorScheme.primary
                : const Color(0xFFF9F9F9),
            border: isActive
                ? null
                : Border.all(
                    color: const Color(0xFFE7E7E7),
                  ),
            shape: BoxShape.circle,
          ),
          child: type
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 18,
                )
              : const Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 14,
                ),
        ),
      );
}
