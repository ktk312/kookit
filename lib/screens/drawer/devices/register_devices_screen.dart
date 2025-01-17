import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kookit/utils/app_asset_images.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';

class RegisterDevicesScreen extends StatefulWidget {
  const RegisterDevicesScreen({super.key});

  @override
  State<RegisterDevicesScreen> createState() => _RegisterDevicesScreenState();
}

class _RegisterDevicesScreenState extends State<RegisterDevicesScreen> {
  List<Map<String, dynamic>> devicesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: appBarWidget('Register Devices',
          actions: devicesList.isNotEmpty
              ? [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {},
                  )
                ]
              : []),
      body: devicesList.isEmpty
          ? SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    AppGaps.hGap16,
                    Card(
                      elevation: 0,
                      color: const Color(0xFFE6EEF8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: 'Device ID',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            AppGaps.hGap10,
                            const HeadingText(
                              text:
                                  'You can find the device ID by connecting to it’s through Wi-Fi.',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF78716C),
                            ),
                            AppGaps.hGap15,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    filledColor: Colors.white,
                                    textColor: const Color(0xFF737373),
                                    hintText: 'Device ID',
                                    hintStyle: GoogleFonts.mulish(
                                        fontSize: 16,
                                        color: const Color(0xFF757575)),
                                  ),
                                ),
                                AppGaps.wGap10,
                                InkWell(
                                  onTap: () {
                                    Get.dialog(
                                      AlertDialog(
                                        backgroundColor: Colors.white,
                                        elevation: 0,
                                        title: const CustomText(
                                          text: 'Where to look for Device ID',
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        content: const HeadingText(
                                          text:
                                              'Placeholder text and image goes here...',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF525252),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                                border: Border.all(
                                                    width: 2,
                                                    color: AppColors
                                                        .fillBlueColor),
                                              ),
                                              child: const CustomText(
                                                text: 'Got it!',
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.fillBlueColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: const Icon(
                                      Icons.info_outline_rounded,
                                      size: 32,
                                      color: AppColors.fillBlueColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            AppGaps.hGap10,
                            Center(
                              child: CustomButton(
                                text: 'Register',
                                onPressed: () {
                                  Get.dialog(
                                    AlertDialog(
                                      backgroundColor: Colors.white,
                                      elevation: 0,
                                      title: const Row(
                                        children: [
                                          Icon(
                                            Icons.check_circle_outline_rounded,
                                            size: 25,
                                            color: Color(0xFF22C55E),
                                          ),
                                          AppGaps.wGap5,
                                          Expanded(
                                            child: FittedBox(
                                              child: CustomText(
                                                text:
                                                    'Device Registered Successfully',
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      content: const HeadingText(
                                        text:
                                            'KooKit device registered successfully. You can go ahead and give it a name.',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF525252),
                                      ),
                                      actions: [
                                        CustomButton(
                                          text: 'Continue',
                                          onPressed: () {
                                            setState(() {
                                              devicesList.addAll([
                                                {
                                                  'name': 'DEVICE 1',
                                                  'status': 'Connected',
                                                  'color':
                                                      const Color(0xFF16A34A),
                                                },
                                                {
                                                  'name': 'DEVICE 2',
                                                  'status': 'Cooking...',
                                                  'color':
                                                      const Color(0xFFFB923C),
                                                },
                                                {
                                                  'name': 'DEVICE 3',
                                                  'status': 'Not connected',
                                                  'color':
                                                      const Color(0xFFEF4444),
                                                },
                                              ]);
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              separatorBuilder: (context, index) => AppGaps.hGap12,
              itemBuilder: (context, index) {
                final device = devicesList[index];
                return ListTile(
                  tileColor: const Color(0xFFE6EEF8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  leading: Image.asset(
                    AppAssetImages.deviceIcon,
                    color: AppColors.fillBlueColor,
                  ),
                  title: CustomText(
                    text: device['name'],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.fillBlueColor,
                  ),
                  subtitle: CustomText(
                    text: device['status'],
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: device['color'],
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.fillBlueColor,
                  ),
                  onTap: () => Get.toNamed(RoutesStrings.updateDevice),
                );
              },
              itemCount: devicesList.length,
            ),
    );
  }
}
