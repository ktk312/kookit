import 'package:flutter/material.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class RecipeReviews extends StatelessWidget {
  const RecipeReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: appBarWidget('Comment & Rating'),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            color: const Color(0xFFE6EEF8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'Anonymous User',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkBlueColor,
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
                    const CustomText(
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Malesuada adipiscing egestas vulputate semper montes amet. Posuere enim sapien non egestas blandit.',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF14273D),
                    ),
                  ],
                )),
          );
        },
        itemCount: 6,
        separatorBuilder: (context, index) => AppGaps.hGap10,
      ),
    );
  }
}
