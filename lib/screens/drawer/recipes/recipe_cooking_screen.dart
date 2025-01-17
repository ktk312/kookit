import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_asset_images.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';
import 'package:kookit/widgets/recipe_widgets.dart';

class RecipeCookingScreen extends StatefulWidget {
  const RecipeCookingScreen({super.key});

  @override
  State<RecipeCookingScreen> createState() => _RecipeCookingScreenState();
}

class _RecipeCookingScreenState extends State<RecipeCookingScreen> {
  final Map<String, String> _selectedOptions = {};
  bool _isExpanded = false;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: appBarWidget('Lasagne'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              AppGaps.hGap16,
              const RecipeDetailHeader(cuisine: 'Mexican'),
              AppGaps.hGap10,
              Card(
                elevation: 0,
                color: const Color(0xFFE6EEF8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                        title: Row(
                          children: [
                            Icon(
                              _isExpanded
                                  ? Icons.arrow_drop_up_rounded
                                  : Icons.arrow_drop_down_rounded,
                              size: 30,
                            ),
                            const CustomText(
                              text: 'Content Panel',
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
                      if (_isExpanded) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSection(
                                '● Oil Level',
                                ['Low', 'Medium', 'High'],
                              ),
                              _buildSection(
                                '● Spice Level',
                                ['Mild', 'Medium', 'Hot'],
                              ),
                              _buildSection(
                                '● Salt Level',
                                ['Low', 'Medium', 'High'],
                              ),
                              _buildSection(
                                '● Quantity',
                                ['Half', '3/4', 'Full'],
                              ),
                              _buildSection(
                                '● Schedule',
                                ['Start Now', 'Schedule Time', 'Date', 'Time'],
                              ),
                            ],
                          ),
                        )
                      ],
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  child: CheckboxListTile(
                    value: _isChecked,
                    controlAffinity: ListTileControlAffinity.leading,
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    activeColor: AppColors.darkBlueColor,
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Color(0xFF1E293B))),
                    onChanged: (value) {
                      setState(() => _isChecked = !_isChecked);
                    },
                    title: const HeadingText(
                      text: 'Keep Warm',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                ),
              ),
              AppGaps.hGap10,
              CustomButton(
                text: 'COOK',
                onPressed: () {
                  Get.dialog(
                    AlertDialog(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      title: Container(),
                      content: const HeadingText(
                        text:
                            'Sit back and relax. KooKit got it from here! You will be notified in 20 minutes when Lasagne will be ready to dig in 😋',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF525252),
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        InkWell(
                          onTap: () => Get.toNamed(RoutesStrings.recipeReviews),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(
                                  width: 2, color: AppColors.fillBlueColor),
                            ),
                            child: const CustomText(
                              text: 'Close',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.fillBlueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                prefixIcon: Image.asset(AppAssetImages.deviceIcon, height: 20),
                fontSize: 16,
                fontWeight: FontWeight.normal,
                iconColor: Colors.white,
              ),
              AppGaps.hGap10,
              AppGaps.hGap16,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> options) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: HeadingText(
              text: title,
              fontWeight: FontWeight.w300,
              fontSize: 14,
              color: const Color(0xFF1E293B),
            ),
          ),
          AppGaps.hGap8,
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: options
                .map(
                  (option) => SelectableButton(
                    label: option,
                    isSelected: _selectedOptions[title] == option,
                    onSelect: () {
                      setState(() {
                        _selectedOptions[title] = option;
                      });
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
