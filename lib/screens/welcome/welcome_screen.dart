import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.size.height,
        width: Get.size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF2764A0),
            Color(0xFF1E3B5C),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HeadingText(
                  text: 'Welcome to Koo Kit',
                ),
                AppGaps.hGap10,
                const CustomText(
                  text:
                      'Lorem ipsum dolor sit amet consectetur. Erat placerat odio ultrices diam tristique malesuada. Faucibus eget vitae est vel sed velit elementum dapibus. Aliquam arcu urna nibh quisque quis lectus semper dictum. Aenean sit sed felis convallis imperdiet enim.',
                  color: Colors.white,
                  textAlign: TextAlign.center,
                ),
                AppGaps.hGap10,
                CustomButton(
                  text: 'Skip',
                  suffixIcon: Icons.arrow_forward_ios_rounded,
                  onPressed: () => Get.toNamed(RoutesStrings.signup),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
