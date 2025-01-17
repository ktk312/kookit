import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0B1831),
        body: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppGaps.hGap16,
                  const TopLogo(),
                  AppGaps.hGap20,
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xFF2764A0),
                            Color(0xFF1E3B5C),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingText(text: 'Address'),
                        AppGaps.hGap20,
                        const CustomTextFormField(hintText: 'Address Line 1'),
                        AppGaps.hGap8,
                        const CustomTextFormField(hintText: 'Address Line 2'),
                        AppGaps.hGap8,
                        const CustomTextFormField(hintText: 'City'),
                        AppGaps.hGap8,
                        const CustomTextFormField(hintText: 'State'),
                        AppGaps.hGap8,
                        const CustomTextFormField(hintText: 'Zip'),
                        AppGaps.hGap8,
                        const CustomTextFormField(hintText: 'Country'),
                        AppGaps.hGap8,
                        Center(
                          child: CustomButton(
                            text: 'Continue',
                            onPressed: () =>
                                Get.toNamed(RoutesStrings.otpScreen),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
