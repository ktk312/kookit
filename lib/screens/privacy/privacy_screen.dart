import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.fillBlueColor,
        title: appBarText('Privacy Policy'),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const CustomDrawer(),
      body: Container(
        height: Get.size.height,
        width: Get.size.width,
        decoration: const BoxDecoration(
            // gradient: LinearGradient(colors: [
            //   Color(0xFF2764A0),
            //   Color(0xFF1E3B5C),
            // ],

            // begin: Alignment.topCenter, end: Alignment.bottomCenter
            // ),
            ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 20,
                    decoration: const BoxDecoration(
                        color: AppColors.fillBlueColor,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(16))),
                  ),
                ],
              ),
              AppGaps.hGap20,
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: const CustomText(
                  text:
                      '''Koo-Kit Automated Cooking Device Terms and Conditions Welcome to Koo-Kit! Please carefully read these Terms and Conditions ("Terms") before using the Koo-Kit Automated Cooking Device ("Device"). By using the Device, you agree to be bound by the following terms: 1. Acceptance of Terms By purchasing, using, or operating the Koo-Kit Automated Cooking Device, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions. If you do not agree, you must refrain from using the Device. 2. Usage Guidelines The user agrees to strictly follow the manufacturer's provided guidelines and recommendations, including but not limited to:''',
                  color: Color(
                    0xFF525252,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: UnorderedListItem(
                      'Proper handling of the Device: Users must operate the Device in accordance with the User Manual and other provided instructions.')),
              Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: UnorderedListItem(
                      'Care with high temperatures: The Device operates at high temperatures. Users must take all standard precautions to avoid burns, fire hazards,')),
            ],
          ),
        ),
      ),
    );
  }
}

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CustomText(
          text: "• ",
          color: Color(
            0xFF525252,
          ),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        Expanded(
          child: CustomText(
            text: text,
            color: const Color(
              0xFF525252,
            ),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
