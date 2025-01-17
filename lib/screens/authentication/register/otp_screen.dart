import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1831),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
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
                  gradient: const LinearGradient(colors: [
                    Color(0xFF2764A0),
                    Color(0xFF1E3B5C),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton.filled(
                          onPressed: () => Get.back(),
                          icon: const Icon(Icons.arrow_back_rounded,
                              color: Colors.white),
                          style: IconButton.styleFrom(
                              backgroundColor: AppColors.fillBlueColor),
                        ),
                        AppGaps.wGap10,
                        const HeadingText(text: 'OTP'),
                      ],
                    ),
                    AppGaps.hGap15,
                    const CustomText(
                        text: 'Enter your OTP from your email here.',
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    AppGaps.hGap15,
                    Center(
                      child: Pinput(
                        length: 6,
                        defaultPinTheme: PinTheme(
                          width: 56,
                          height: 56,
                          textStyle: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ),
                    AppGaps.hGap15,
                    Center(
                      child: CustomButton(
                        text: 'Continue',
                        onPressed: () => Get.toNamed(RoutesStrings.home),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
