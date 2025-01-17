import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';

class RateRecipe extends StatelessWidget {
  const RateRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: appBarWidget('Write a Comment & Rating'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              AppGaps.hGap16,
              Card(
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
                        text: 'Ratings',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            AppGaps.hGap10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const HeadingText(
                                  text: '● Oil',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF1E293B),
                                ),
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
                              ],
                            ),
                            AppGaps.hGap5,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const HeadingText(
                                  text: '● Spice',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF1E293B),
                                ),
                                Row(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star_rounded,
                                      color: index < 0
                                          ? const Color(0xFFF1C644)
                                          : const Color(0xFFD4D4D4),
                                      size: 18,
                                    );
                                  }),
                                ),
                              ],
                            ),
                            AppGaps.hGap5,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const HeadingText(
                                  text: '● Salt',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF1E293B),
                                ),
                                Row(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star_rounded,
                                      color: index < 0
                                          ? const Color(0xFFF1C644)
                                          : const Color(0xFFD4D4D4),
                                      size: 18,
                                    );
                                  }),
                                ),
                              ],
                            ),
                            AppGaps.hGap5,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const HeadingText(
                                  text: '● Quantity',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF1E293B),
                                ),
                                Row(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star_rounded,
                                      color: index < 0
                                          ? const Color(0xFFF1C644)
                                          : const Color(0xFFD4D4D4),
                                      size: 18,
                                    );
                                  }),
                                ),
                              ],
                            ),
                            AppGaps.hGap5,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const HeadingText(
                                  text: '● Over all Experience',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF1E293B),
                                ),
                                Row(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star_rounded,
                                      color: index < 0
                                          ? const Color(0xFFF1C644)
                                          : const Color(0xFFD4D4D4),
                                      size: 18,
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppGaps.hGap10,
              Card(
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
                        text: 'Comment',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
                      ),
                      AppGaps.hGap10,
                      Form(
                        child: TextFormField(
                          onChanged: (value) {
                            // search logic
                          },
                          style: const TextStyle(
                              fontSize: 16, color: Color(0xFF737373)),
                          maxLines: 4,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Type your comment here...',
                            hintStyle: GoogleFonts.mulish(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xFF737373),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0 * 1.5, vertical: 16.0),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppGaps.hGap10,
              CustomButton(
                text: 'Submit Review',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                textColor: Colors.white,
                onPressed: () => Get.toNamed(RoutesStrings.recipeReviews),
              ),
              AppGaps.hGap16,
            ],
          ),
        ),
      ),
    );
  }
}
