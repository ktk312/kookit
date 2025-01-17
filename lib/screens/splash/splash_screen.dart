import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_asset_images.dart';
import 'package:kookit/utils/routes_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 4),
        () => Get.offAllNamed(RoutesStrings.language));
  }

  @override
  void initState() {
    navigateToHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height,
      width: Get.size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFF2764A0),
          Color(0xFF1E3B5C),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Center(
          child: Image(
        image: const AssetImage(AppAssetImages.appLogo),
        fit: BoxFit.cover,
        height: Get.size.height / 4,
      )),
    );
  }
}
