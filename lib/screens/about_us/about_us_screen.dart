import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.fillBlueColor,
        title: appBarText('About Us'),
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
                      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                  color: Color(
                    0xFF525252,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              AppGaps.hGap20,
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: const CustomText(
                  text:
                      '''It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                  color: Color(
                    0xFF525252,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              AppGaps.hGap20,
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: const CustomText(
                  text:
                      '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                  color: Color(
                    0xFF525252,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
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
