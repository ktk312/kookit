import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_asset_images.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';
import 'package:kookit/widgets/recipe_widgets.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: appBarWidget('Recipe - Lasagne'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              AppGaps.hGap16,
              const RecipeDetailHeader(),
              AppGaps.hGap16,
              const InsightsExpandableCard(),
              AppGaps.hGap10,
              CustomButton(
                text: 'Play to Cook',
                onPressed: () => Get.toNamed(RoutesStrings.recipeCookingScreen),
                prefixIcon: Image.asset(AppAssetImages.deviceIcon, height: 20),
                fontSize: 16,
                fontWeight: FontWeight.normal,
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
