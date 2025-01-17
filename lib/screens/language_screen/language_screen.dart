import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String selectedValue = 'English';

  List<String> languages = ['English', 'Urdu'];

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
                const HeadingText(text: 'Language Preference'),
                AppGaps.hGap20,
                SizedBox(
                  child: CustomDropdown(
                    items: languages,
                    closedHeaderPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    initialItem: languages.first,
                    onChanged: (value) {},
                    decoration: CustomDropdownDecoration(
                        headerStyle: GoogleFonts.mulish(
                            fontSize: 16, color: Colors.white),
                        closedSuffixIcon: const Icon(
                          Icons.arrow_drop_down_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                        expandedSuffixIcon: const Icon(
                          Icons.arrow_drop_up_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                        closedFillColor: AppColors.fillBlueColor,
                        expandedFillColor: AppColors.fillBlueColor,
                        closedBorderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                  ),
                ),
                AppGaps.hGap20,
                CustomButton(
                  text: 'Continue',
                  suffixIcon: Icons.arrow_forward_ios_rounded,
                  onPressed: () => Get.toNamed(RoutesStrings.welcome),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
