import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class ReferFriendScreen extends StatefulWidget {
  const ReferFriendScreen({super.key});

  @override
  State<ReferFriendScreen> createState() => _ReferFriendScreenState();
}

class _ReferFriendScreenState extends State<ReferFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.fillBlueColor,
        title: appBarText('Refer a friend'),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CustomText(
                          text: 'Refer a Friend',
                          color: Color(0xFF1E293B),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        const CustomText(
                          text: 'Invite friends, earn and redeem rewards',
                          color: Color(0xFF1E293B),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        AppGaps.hGap10,
                        Container(
                          height: 50,
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),

                          // width: ,
                          child: Row(
                            children: [
                              Expanded(
                                // width: Get.size.width,
                                child: TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                      hintText: 'www.kookit.com/879DAF7',
                                      hintStyle: GoogleFonts.mulish(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF737373)),
                                      border: InputBorder.none,
                                      filled: false,
                                      fillColor: Colors.black),
                                ),
                              ),
                              const Icon(Icons.copy)
                            ],
                          ),
                        ),
                        AppGaps.hGap12,
                        CustomButton(
                          text: 'Share with Friends',
                          onPressed: () {},
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          backgroundColor: const Color(0xFF10B981),
                        )
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     const CustomText(
                        //         text: 'Add an attachment',
                        //         textDecoration: TextDecoration.underline,
                        //         decorationColor: Color(0xFF0973A8),
                        //         fontSize: 14,
                        //         fontWeight: FontWeight.w400,
                        //         color: Color(0xFF0973A8)),
                        //     CustomButton(
                        //       text: 'Submit',
                        //       onPressed: () {},
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.w500,
                        //       backgroundColor: const Color(0xFF10B981),
                        //     )
                        //   ],
                        // )
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
