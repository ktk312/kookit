import 'package:flutter/material.dart';
import 'package:kookit/utils/app_asset_images.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class SingleCookingProgress extends StatelessWidget {
  final String deviceName;
  final String recipeName;
  final String timeToCook;
  final String cookingTimeLeft;

  /// from 0.0 to 1.0
  final double value;
  const SingleCookingProgress(
      {required this.deviceName,
      required this.recipeName,
      required this.timeToCook,
      required this.cookingTimeLeft,
      required this.value,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: const Color(0xFF1E466E),
          border: Border.all(color: AppColors.fillBlueColor),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Image.asset(
            AppAssetImages.deviceIcon,
            height: 50,
          ),
          AppGaps.wGap10,
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText(
                      text: deviceName,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    Image.asset(AppAssetImages.cookingInProgress),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const CustomText(
                          text: 'Recipe: ',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: recipeName,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    AppGaps.wGap10,
                    Row(
                      children: [
                        const CustomText(
                          text: 'Time to cook: ',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: timeToCook,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
                AppGaps.hGap5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: 'Cooking time left:',
                      fontSize: 8,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: cookingTimeLeft,
                      fontSize: 8,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                AppGaps.hGap3,
                LinearProgressIndicator(
                  value: value,
                  backgroundColor: const Color(0xFF205084),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
