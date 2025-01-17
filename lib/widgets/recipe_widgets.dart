import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kookit/utils/app_asset_images.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';
import 'package:readmore/readmore.dart';

class SingleRecipe extends StatelessWidget {
  final VoidCallback? onTap;
  const SingleRecipe({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Card(
            elevation: 0,
            color: const Color(0xFFE6EEF8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.fillBlueColor)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.network(
                            'https://s3-alpha-sig.figma.com/img/2d75/9568/588b03103ab17eba61feab9f8a5c98d9?Expires=1736121600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JXYLRpUMWoWgEMCMMRyVPwEVelxi-matlRihg0egKY7wANyIr8fCq0RI3ELjJRGRbb4K4YtwAcMB22lnPvaMTKLCDm118Lo2eXPX2Fzlq1ZF7U~5nnDMCesOYfoE~ZHpnWHwtRP4eAlEEpLUs0UUTwjOPcuordu2lmB8LVgpotgZCkc1Ei8fwmFjnMXiIru0S9Ca5OCzlJSZIkVaOjz8NoJKueN1oboXZOviplWWJfwRgooJFt0Pz~gDcbqAeIXdpHGYOuBA3h1D0-W4EbmFeql34W-0Gk3CXWjFBgOJDbbq2KYwcSoHxrJHrSgrYeqZIkL0scAM0dGH9e~UBI7sLA__',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AppGaps.wGap15,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const HeadingText(
                              text: 'Lasagne',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.darkBlueColor,
                            ),
                            AppGaps.hGap5,
                            const Row(
                              children: [
                                CustomText(
                                  text: 'By ',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF1E3B5C),
                                ),
                                CustomText(
                                  text: '@adam_sandler',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xFF404040),
                                ),
                              ],
                            ),
                            AppGaps.hGap5,
                            Row(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star_rounded,
                                  color: index < 4
                                      ? const Color(0xFFF1C644)
                                      : const Color(0xFFD4D4D4),
                                  size: 18,
                                );
                              }),
                            ),
                            AppGaps.hGap5,
                            Row(
                              children: [
                                const CustomText(
                                  text: 'Cook in ',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF747A80),
                                ),
                                const CustomText(
                                  text: '20 min',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1E293B),
                                ),
                                AppGaps.wGap10,
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.darkBlueColor),
                                  child: const Icon(Icons.visibility_outlined,
                                      size: 12, color: Colors.white),
                                ),
                                AppGaps.wGap3,
                                const CustomText(
                                  text: '14k view',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF404040),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.fillBlueColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: 25,
            child: Image.asset(
              AppAssetImages.bookmarkIcon,
              height: 30,
              fit: BoxFit.cover,
            ))
      ],
    );
  }
}

class RecipeDetailHeader extends StatelessWidget {
  final String? cuisine;
  const RecipeDetailHeader({this.cuisine, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFE6EEF8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe Header Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Recipe Image
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.fillBlueColor)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/2d75/9568/588b03103ab17eba61feab9f8a5c98d9?Expires=1736121600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JXYLRpUMWoWgEMCMMRyVPwEVelxi-matlRihg0egKY7wANyIr8fCq0RI3ELjJRGRbb4K4YtwAcMB22lnPvaMTKLCDm118Lo2eXPX2Fzlq1ZF7U~5nnDMCesOYfoE~ZHpnWHwtRP4eAlEEpLUs0UUTwjOPcuordu2lmB8LVgpotgZCkc1Ei8fwmFjnMXiIru0S9Ca5OCzlJSZIkVaOjz8NoJKueN1oboXZOviplWWJfwRgooJFt0Pz~gDcbqAeIXdpHGYOuBA3h1D0-W4EbmFeql34W-0Gk3CXWjFBgOJDbbq2KYwcSoHxrJHrSgrYeqZIkL0scAM0dGH9e~UBI7sLA__',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                AppGaps.wGap16,
                // Recipe Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeadingText(
                        text: 'Lasagne',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkBlueColor,
                      ),
                      AppGaps.hGap5,
                      if (cuisine != null)
                        Row(
                          children: [
                            const CustomText(
                              text: 'Cuisine: ',
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF747A80),
                            ),
                            CustomText(
                              text: cuisine!,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF1E3B5C),
                            ),
                          ],
                        )
                      else
                        const Row(
                          children: [
                            CustomText(
                              text: 'By ',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1E3B5C),
                            ),
                            CustomText(
                              text: '@kitchen_cuisine',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                              color: Color(0xFF404040),
                            ),
                          ],
                        ),
                      AppGaps.hGap3,
                      if (cuisine != null)
                        FittedBox(
                          child: Row(
                            children: [
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star_rounded,
                                    color: index < 4
                                        ? const Color(0xFFF1C644)
                                        : const Color(0xFFD4D4D4),
                                    size: 18,
                                  );
                                }),
                              ),
                              AppGaps.wGap5,
                              const CustomText(
                                text: '(14k Review)',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF404040),
                              ),
                            ],
                          ),
                        )
                      else
                        Row(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star_rounded,
                              color: index < 4
                                  ? const Color(0xFFF1C644)
                                  : const Color(0xFFD4D4D4),
                              size: 18,
                            );
                          }),
                        ),
                      AppGaps.hGap2,
                      FittedBox(
                        child: Row(
                          children: [
                            const CustomText(
                              text: 'Cook in ',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF747A80),
                            ),
                            const CustomText(
                              text: '20 min',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E293B),
                            ),
                            AppGaps.wGap10,
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.darkBlueColor),
                              child: const Icon(Icons.visibility_outlined,
                                  size: 12, color: Colors.white),
                            ),
                            AppGaps.wGap3,
                            const CustomText(
                              text: 'Used 14k times',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF404040),
                            ),
                          ],
                        ),
                      ),
                      AppGaps.hGap5,
                      ReadMoreText(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.',
                        trimMode: TrimMode.Line,
                        trimLines: 3,
                        trimCollapsedText: 'Show more...',
                        trimExpandedText: 'Show less...',
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF404040),
                        ),
                        lessStyle: GoogleFonts.inter(
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF1675C3),
                        ),
                        moreStyle: GoogleFonts.inter(
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF1675C3),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (cuisine != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PopupMenuButton(
                    icon: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: AppColors.darkBlueColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.more_horiz_rounded,
                          color: Colors.white),
                    ),
                    position: PopupMenuPosition.under,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(color: Color(0xFFDDDCDB))),
                    onSelected: (value) {
                      if (value == 'comment') {
                        Get.toNamed(RoutesStrings.rateRecipe);
                      }
                    },
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          value: 'comment',
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.chat_bubble,
                                size: 20,
                              ),
                              AppGaps.wGap10,
                              CustomText(
                                text: 'Write a comment',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF205084),
                              ),
                              AppGaps.wGap10,
                            ],
                          ),
                        ),
                        const PopupMenuItem(
                          value: 'share',
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.share,
                                size: 20,
                              ),
                              AppGaps.wGap10,
                              CustomText(
                                text: 'Share',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF205084),
                              ),
                              AppGaps.wGap10,
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class InsightsExpandableCard extends StatefulWidget {
  const InsightsExpandableCard({super.key});

  @override
  State<InsightsExpandableCard> createState() => _InsightsExpandableCardState();
}

class _InsightsExpandableCardState extends State<InsightsExpandableCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFE6EEF8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              title: Row(
                children: [
                  Icon(
                    isExpanded
                        ? Icons.arrow_drop_up_rounded
                        : Icons.arrow_drop_down_rounded,
                  ),
                  const CustomText(
                    text: 'Insights',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ],
              ),
              contentPadding: EdgeInsets.zero,
              dense: true,
              visualDensity: VisualDensity.compact,
            ),
            if (isExpanded) ...[
              const HeadingText(
                text:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
              AppGaps.hGap10,
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                    border:
                        Border.all(width: 2, color: AppColors.darkBlueColor),
                  ),
                  child: const CustomText(
                    text: 'Show more',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkBlueColor,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class SelectableButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onSelect;

  const SelectableButton({
    required this.label,
    required this.isSelected,
    required this.onSelect,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.darkBlueColor : Colors.white,
          border: Border.all(color: const Color(0xFF1E293B)),
          borderRadius: BorderRadius.circular(7),
        ),
        child: HeadingText(
          text: label,
          fontWeight: FontWeight.w300,
          fontSize: 14,
          color: isSelected ? Colors.white : const Color(0xFF1E293B),
        ),
      ),
    );
  }
}
