import 'package:flutter/material.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class UpdateDevice extends StatelessWidget {
  const UpdateDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Update Device'),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppGaps.hGap16,
              const HeadingText(
                text: 'Device Name:',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color(0xFF78716C),
              ),
              AppGaps.hGap10,
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: AppColors.darkBlueColor)),
                child: const CustomText(
                  text: 'Device abc',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.darkBlueColor,
                ),
              ),
              AppGaps.hGap20,
              Center(
                child: CustomButton(
                  text: 'Update',
                  onPressed: () {},
                ),
              ),
              AppGaps.hGap20,
              const CustomText(
                text: 'Device registered under other users',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              AppGaps.hGap15,
              ListTile(
                tileColor: const Color(0xFFE6EEF8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/person1.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const CustomText(
                  text: 'Asitha Fernando',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlueColor,
                ),
                subtitle: const CustomText(
                  text: '#258FT877AER',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF525252),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.darkBlueColor,
                ),
              ),
              AppGaps.hGap15,
              ListTile(
                tileColor: const Color(0xFFE6EEF8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/person2.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const CustomText(
                  text: 'Gargi Bhogle',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlueColor,
                ),
                subtitle: const CustomText(
                  text: '#258FT877AER',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF525252),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.darkBlueColor,
                ),
              ),
              AppGaps.hGap15,
              ListTile(
                tileColor: const Color(0xFFE6EEF8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/person3.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const CustomText(
                  text: 'Brandon King',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlueColor,
                ),
                subtitle: const CustomText(
                  text: '#258FT877AER',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF525252),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.darkBlueColor,
                ),
              ),
              AppGaps.hGap20,
              const CustomText(
                text: 'Device Status',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              AppGaps.hGap15,
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFE6EEF8)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Warranty',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkBlueColor,
                    ),
                    HeadingText(
                      text: 'Life Time Guarantee',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF525252),
                    ),
                  ],
                ),
              ),
              AppGaps.hGap15,
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFE6EEF8)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Firmware Version',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkBlueColor,
                    ),
                    HeadingText(
                      text: '1.01.01',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF525252),
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
