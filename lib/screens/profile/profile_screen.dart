import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Profile'),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xFF205084),
                child: Stack(
                  children: [
                    const Center(
                      child: CustomText(
                        text: 'GU',
                        color: Colors.white,
                        fontSize: 46,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(60)),
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.image_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              AppGaps.hGap20,
              // Form Fields
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6EEF8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Your Information Title
                    const CustomText(
                      text: 'Your information',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.fillBlueColor,
                    ),
                    AppGaps.hGap20,
                    // First Name and Last Name
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            labelText: 'First name',
                            controller: TextEditingController(text: 'John'),
                            textColor: const Color(0xFF78716C),
                            filledColor: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        AppGaps.wGap16,
                        Expanded(
                          child: CustomTextFormField(
                            labelText: 'Last name',
                            controller: TextEditingController(text: 'Doe'),
                            textColor: const Color(0xFF78716C),
                            filledColor: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    AppGaps.hGap5,
                    // Email Address
                    CustomTextFormField(
                      labelText: 'Email Address',
                      controller:
                          TextEditingController(text: 'guest.user@gmail.com'),
                      textColor: const Color(0xFF78716C),
                      fontSize: 14,
                      filledColor: Colors.white,
                    ),
                    AppGaps.hGap5,
                    // Phone Number
                    CustomTextFormField(
                      labelText: 'Phone Number',
                      controller:
                          TextEditingController(text: '+91 123 4567 89 0'),
                      textColor: const Color(0xFF78716C),
                      fontSize: 14,
                      filledColor: Colors.white,
                    ),
                    AppGaps.hGap5,
                    const CustomText(
                        text: 'Choose Your Option',
                        color: Color(0xFF262627),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                    AppGaps.hGap8,
                    CustomDropdown(
                      items: const ['Non-Vegan', 'Vegan', 'Vegetarian'],
                      initialItem: 'Non-Vegan',
                      decoration: CustomDropdownDecoration(
                        closedBorderRadius: BorderRadius.circular(50),
                        expandedBorderRadius: BorderRadius.circular(50),
                        headerStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF78716C)),
                        listItemStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF78716C)),
                        closedSuffixIcon:
                            const Icon(Icons.arrow_drop_down_rounded),
                        expandedSuffixIcon:
                            const Icon(Icons.arrow_drop_up_rounded),
                      ),
                      closedHeaderPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 13),
                      onChanged: (value) {
                        // Handle dropdown selection
                      },
                    ),
                    AppGaps.hGap20,
                    // Address
                    CustomTextFormField(
                      labelText: 'Address',
                      controller:
                          TextEditingController(text: 'New Delhi, India'),
                      textColor: const Color(0xFF78716C),
                      fontSize: 14,
                      filledColor: Colors.white,
                    ),
                    AppGaps.hGap15,
                    Center(
                      child: CustomButton(
                        text: 'Update',
                        onPressed: () {},
                        backgroundColor: const Color(0xFF10B981),
                      ),
                    ),
                  ],
                ),
              ),
              AppGaps.hGap20,
            ],
          ),
        ),
      ),
    );
  }
}
