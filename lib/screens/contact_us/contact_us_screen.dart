import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.fillBlueColor,
        title: appBarText('Contact Us'),
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
              Container(
                width: Get.size.width,
                // height: 250,
                margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Card(
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
                          text: 'Ask anything you want',
                          color: Color(0xFF1E293B),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        AppGaps.hGap10,
                        Container(
                          height: 150,
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),

                          // width: ,
                          child: const TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: false,
                                fillColor: Colors.white),
                          ),
                        ),
                        AppGaps.hGap12,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomText(
                                text: 'Add an attachment',
                                textDecoration: TextDecoration.underline,
                                decorationColor: Color(0xFF0973A8),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF0973A8)),
                            CustomButton(
                              text: 'Submit',
                              onPressed: () {
                                Get.dialog(
                                  AlertDialog(
                                    backgroundColor: Colors.white,
                                    elevation: 0,
                                    title: const Row(
                                      children: [
                                        Expanded(
                                          child: FittedBox(
                                            child: CustomText(
                                              text: 'Submission Successful',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    content: const HeadingText(
                                      text:
                                          'Thank you for submitting a query. You can expect a response from our team in 24 to 48 hours.',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF525252),
                                    ),
                                    actions: [
                                      CustomButton(
                                        text: 'Close',
                                        textColor: const Color(0xFF333333),
                                        backgroundColor: Colors.white,
                                        hasBorder: true,
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              backgroundColor: const Color(0xFF10B981),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
