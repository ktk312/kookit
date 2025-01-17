import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.fillBlueColor,
        title: appBarText('Settings'),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const CustomDrawer(),
      body: Container(
        height: Get.size.height,
        width: Get.size.width,
        decoration: const BoxDecoration(),
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

              //   items: imageList.map((image) {
              //     return Container(
              //       width: Get.size.width,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(12),
              //         border: Border.all(color: AppColors.fillBlueColor),
              //       ),
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(12),
              //         clipBehavior: Clip.antiAlias,
              //         child: Image.network(
              //           image,
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     );
              //   }).toList(),
              // ),
              // if (imageList.isNotEmpty) AppGaps.hGap15,
              // if (imageList.isNotEmpty)
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: List.generate(imageList.length, (index) {
              //     if (index == currentPage) {
              //       return Container(
              //         // height: 30,
              //         // width: 60,
              //         height: 3,
              //         width: 10,
              //         margin: const EdgeInsets.symmetric(horizontal: 3),
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(20),
              //         ),
              //       );
              //     }
              //     return Container(
              //       height: 3,
              //       width: 10,
              //       margin: const EdgeInsets.symmetric(horizontal: 3),
              //       decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(20),
              //           border: Border.all(color: AppColors.fillBlueColor)),
              //     );
              //   }),
              // ),
              // AppGaps.hGap20,
              AppGaps.hGap16,

              const CustomTileSettings(
                title: "Notifications",
                trailingText: 'ON/OFF',
                showSwitch: true,
                showtrailingText: true,
              ),
              AppGaps.hGap16,
              const CustomTileSettings(
                title: "Language Preference",
                trailingText: 'ON/OFF',
                showDropdown: true,
              ),
              AppGaps.hGap16,
              const CustomTileSettings(
                title: "Software Update",
                trailingText: '1.01.01',
                showtrailingText: true,
                hasRightPadding: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
