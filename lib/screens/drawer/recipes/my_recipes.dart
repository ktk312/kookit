import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_asset_images.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';
import 'package:kookit/widgets/recipe_widgets.dart';

class MyRecipes extends StatefulWidget {
  const MyRecipes({super.key});

  @override
  State<MyRecipes> createState() => _MyRecipesState();
}

class _MyRecipesState extends State<MyRecipes> {
  final List<String> selectedFilters = [];
  final List<String> filters = [
    'Favorites',
    'Featured',
    'New Arrivals',
    'Cuisine',
    'Veg/Non-veg',
    'Cooking time',
    'Entrée',
    'Breakfast',
    'Dessert',
    'Rating',
    'No of times used'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: appBarWidget('Recipes'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              AppGaps.hGap16,
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: Form(
                        child: TextFormField(
                          textInputAction: TextInputAction.search,
                          onChanged: (value) {
                            // search logic
                          },
                          style: const TextStyle(
                              fontSize: 16, color: Color(0xFF737373)),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.fillBlueColor,
                            ),
                            hintText: 'Search for ...',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF737373),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.0 * 1.5, vertical: 16.0),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.fillBlueColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.fillBlueColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.fillBlueColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppGaps.wGap10,
                  CustomButton(
                    text: 'Filter',
                    onPressed: () {
                      Get.bottomSheet(
                        StatefulBuilder(
                          builder: (BuildContext context, setState) {
                            return Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CustomText(
                                        text: 'Available filters',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF262627),
                                      ),
                                      GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Container(
                                          padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              color: AppColors.darkBlueColor),
                                          child: const Icon(
                                            Icons.check_rounded,
                                            color: Colors.white,
                                            weight: 5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  AppGaps.hGap16,
                                  // Filter Containers
                                  Wrap(
                                    spacing: 8,
                                    runSpacing: 10,
                                    children: filters.map((filter) {
                                      final bool isSelected =
                                          selectedFilters.contains(filter);
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (isSelected) {
                                              selectedFilters.remove(filter);
                                            } else {
                                              selectedFilters.add(filter);
                                            }
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFE6EEF8),
                                            border: isSelected
                                                ? Border.all(
                                                    color:
                                                        AppColors.darkBlueColor,
                                                    width: 2)
                                                : null,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: HeadingText(
                                            text: filter,
                                            color: isSelected
                                                ? AppColors.darkBlueColor
                                                : const Color(0xFF525252),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        backgroundColor: Colors.white,
                      );
                    },
                    prefixIcon: Image.asset(AppAssetImages.filterIcon),
                    iconSize: 20,
                  ),
                ],
              ),
              AppGaps.hGap16,
              SingleRecipe(
                onTap: () => Get.toNamed(RoutesStrings.recipeDetails),
              ),
              AppGaps.hGap10,
              SingleRecipe(
                onTap: () => Get.toNamed(RoutesStrings.recipeDetails),
              ),
              AppGaps.hGap10,
              SingleRecipe(
                onTap: () => Get.toNamed(RoutesStrings.recipeDetails),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
