import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_asset_images.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/routes_strings.dart';
import 'package:kookit/widgets/core_widgets.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1831),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppGaps.hGap16,
                const TopLogo(),
                AppGaps.hGap20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() => isLogin = true),
                      child: Container(
                        width: Get.size.width / 2.8,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF357CBA),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        child: Center(
                            child: CustomText(
                          text: 'Login',
                          fontWeight:
                              isLogin ? FontWeight.bold : FontWeight.w500,
                        )),
                      ),
                    ),
                    AppGaps.wGap20,
                    GestureDetector(
                      onTap: () => setState(() => isLogin = false),
                      child: Container(
                        width: Get.size.width / 2.8,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF357CBA),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        child: Center(
                            child: CustomText(
                          text: 'Register',
                          fontWeight:
                              isLogin ? FontWeight.w500 : FontWeight.bold,
                        )),
                      ),
                    ),
                  ],
                ),
                if (isLogin) ...[
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xFF2764A0),
                            Color(0xFF1E3B5C),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingText(text: 'Login', color: Colors.white),
                        AppGaps.hGap20,
                        const CustomTextFormField(hintText: 'Email'),
                        AppGaps.hGap8,
                        const CustomTextFormField(
                          hintText: 'Password',
                          isPasswordTextField: true,
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.white,
                          ),
                        ),
                        AppGaps.hGap8,
                        Center(
                          child: CustomButton(
                            text: 'Login',
                            onPressed: () => Get.toNamed(RoutesStrings.address),
                          ),
                        ),
                        AppGaps.hGap15,
                        const Center(
                          child: CustomText(
                            text: 'Forgot Password?',
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            textDecoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            decorationColor: Color(0xFFC6DBF1),
                            textAlign: TextAlign.center,
                            color: Color(0xFFC6DBF1),
                          ),
                        ),
                        AppGaps.hGap8,

                        // Already have an account
                        const Center(
                          child: Text.rich(
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              children: [
                                TextSpan(
                                  text: 'Register here',
                                  style: TextStyle(
                                    color: Color(0xFFC6DBF1),
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFFC6DBF1),
                                    decorationThickness: 1,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  AppGaps.hGap20,

                  // Or Login Using
                  const CustomText(
                    text: 'Or login using',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  AppGaps.hGap10,

                  // Social Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppAssetImages.googleIcon),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                      AppGaps.wGap3,
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppAssetImages.fbIcon),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                      AppGaps.wGap3,
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppAssetImages.appleIcon),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                    ],
                  ),
                ] else ...[
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xFF2764A0),
                            Color(0xFF1E3B5C),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingText(
                            text: 'Register', color: Colors.white),
                        AppGaps.hGap20,

                        // Email Field
                        const CustomTextFormField(hintText: 'Email'),
                        AppGaps.hGap8,

                        // First and Last Name Fields
                        const Row(
                          children: [
                            Expanded(
                                child: CustomTextFormField(
                                    hintText: 'First Name')),
                            AppGaps.wGap10,
                            Expanded(
                                child:
                                    CustomTextFormField(hintText: 'Last Name')),
                          ],
                        ),
                        AppGaps.hGap8,

                        // Phone Number
                        const Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: CustomTextFormField(
                                  hintText: '+93',
                                )),
                            AppGaps.wGap10,
                            Expanded(
                                flex: 3,
                                child: CustomTextFormField(hintText: 'Number')),
                          ],
                        ),
                        AppGaps.hGap8,

                        // Password Fields
                        const CustomTextFormField(
                          hintText: 'Password',
                          isPasswordTextField: true,
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.white,
                          ),
                        ),
                        AppGaps.hGap8,
                        const CustomTextFormField(
                          hintText: 'Confirm Password',
                          isPasswordTextField: true,
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.white,
                          ),
                        ),
                        AppGaps.hGap8,

                        // Register Button
                        Center(
                          child: CustomButton(
                            text: 'Register',
                            onPressed: () => Get.toNamed(RoutesStrings.address),
                          ),
                        ),

                        AppGaps.hGap15,

                        // Already have an account
                        const Center(
                          child: Text.rich(
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                  text: 'Login here',
                                  style: TextStyle(
                                    color: Color(0xFF1C73DA),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  AppGaps.hGap20,

                  // Or Register Using
                  const CustomText(
                    text: 'Or register using',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  AppGaps.hGap10,

                  // Social Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppAssetImages.googleIcon),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                      AppGaps.wGap3,
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppAssetImages.fbIcon),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                      AppGaps.wGap3,
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppAssetImages.appleIcon),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                    ],
                  ),
                ],
                AppGaps.hGap16,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
