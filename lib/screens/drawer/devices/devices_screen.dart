import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: appBarWidget('Devices'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: 'Let\'s get started by registering your\nKooKit device',
                fontWeight: FontWeight.w600,
                color: AppColors.fillBlueColor,
                textAlign: TextAlign.center,
              ),
              AppGaps.hGap20,
              CustomButton(
                text: 'Register Device',
                suffixIcon: Icons.add,
                iconSize: 22,
                onPressed: () => Get.toNamed(RoutesStrings.registerDevices),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
