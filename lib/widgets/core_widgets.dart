import 'dart:io';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kookit/utils/app_asset_images.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/utils/routes_strings.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextOverflow? overflow;
  final TextDecoration? textDecoration;
  final int? maxLines;
  final double? letterSpacing;
  final double? height;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  const HeadingText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.overflow,
    this.textDecoration,
    this.maxLines,
    this.fontStyle,
    this.height,
    this.textAlign,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: GoogleFonts.kanit(
          fontSize: fontSize ?? 24,
          letterSpacing: letterSpacing,
          fontStyle: fontStyle,
          decoration: textDecoration,
          fontWeight: fontWeight ?? FontWeight.w600,
          color: color ?? Colors.white,
          height: height),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextOverflow? overflow;
  final TextDecoration? textDecoration;
  final int? maxLines;
  final double? letterSpacing;
  final double? height;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  final Color? decorationColor;
  const CustomText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
    this.maxLines,
    this.fontStyle,
    this.height,
    this.textAlign,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: GoogleFonts.mulish(
          fontSize: fontSize ?? 18,
          letterSpacing: letterSpacing,
          fontStyle: fontStyle,
          decoration: textDecoration,
          decorationColor: decorationColor,
          fontWeight: fontWeight,
          color: color ?? Colors.white,
          height: height),
    );
  }
}

appBarText(String text) {
  return CustomText(
    text: text,
    fontSize: 18,
    fontWeight: FontWeight.w800,
  );
}

appBarWidget(String title, {List<Widget>? actions}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child: ClipRRect(
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(16),
      ),
      child: AppBar(
        backgroundColor: AppColors.darkBlueColor,
        toolbarHeight: 70,
        title: appBarText(title),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: actions,
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final double? iconSize;
  final Color? iconColor;
  final double elevation;
  final bool? hasBorder;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontSize = 18,
    this.hasBorder = false,
    this.fontWeight = FontWeight.w600,
    this.textColor = Colors.white,
    this.backgroundColor = AppColors.fillBlueColor,
    this.prefixIcon,
    this.suffixIcon,
    this.iconSize = 15,
    this.iconColor = Colors.white,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: elevation,
          side: hasBorder == true
              ? const BorderSide(color: Color(0xFFAFB0B0))
              : null,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null) ...[
            prefixIcon!,
            AppGaps.wGap5,
          ],
          CustomText(
            text: text,
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: textColor,
          ),
          if (suffixIcon != null) ...[
            AppGaps.wGap5,
            Icon(
              suffixIcon,
              size: iconSize,
              color: iconColor,
            ),
          ],
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final bool isPasswordTextField;
  final bool hasShadow;
  final bool isReadOnly;
  // final BoxConstraints prefixIconConstraints;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextStyle? hintStyle;
  final int? maxLength;
  // final BoxConstraints suffixIconConstraints;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatters;
  final TextCapitalization? textCapitalization;
  final int? minLines;
  final int maxLines;
  final Color? filledColor;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.hintText,
    this.formatters,
    this.hintStyle,
    this.textColor,
    this.fontSize,
    this.textCapitalization = TextCapitalization.sentences,
    this.isPasswordTextField = false,
    this.hasShadow = false,
    // this.prefixIconConstraints =
    //     const BoxConstraints(maxHeight: 48, maxWidth: 48),
    // this.suffixIconConstraints =
    //     const BoxConstraints(maxHeight: 50, maxWidth: 50),
    this.isReadOnly = false,
    this.textInputType,
    this.textInputAction,
    this.controller,
    this.minLines,
    this.maxLength,
    this.maxLines = 1,
    this.filledColor,
    this.onTap,
    this.validator,
  });

  /// TextField widget
  Widget textFormFieldWidget(BuildContext context) {
    return SizedBox(
      height: (maxLines > 1 || (minLines ?? 1) > 1) ? null : 65,
      child: TextFormField(
        controller: controller,
        onTap: onTap,
        readOnly: isReadOnly,
        obscureText: isPasswordTextField,
        obscuringCharacter: '*',
        keyboardType: textInputType,
        maxLength: maxLength,
        textInputAction: textInputAction,
        minLines: minLines,
        maxLines: maxLines,
        focusNode: focusNode,
        validator: validator,
        inputFormatters: formatters,
        textCapitalization: textCapitalization!,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        style: TextStyle(
            fontSize: fontSize,
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.normal),
        cursorColor: textColor ?? Colors.white,
        decoration: InputDecoration(
          hintText: hintText,
          errorStyle: TextStyle(
              fontSize: 14, color: Theme.of(context).colorScheme.error),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none),
          fillColor: filledColor ?? AppColors.fillBlueColor,
          filled: true,
          hintStyle: hintStyle ??
              const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
          // prefix: AppGaps.wGap10,
          // prefixIconConstraints: prefixIconConstraints,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          prefixIcon: prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: prefixIcon,
                )
              : null,
          suffix: AppGaps.wGap10,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // If label text is not null, then show label as a separate Text widget
    // wrapped inside column widget.
    // Else, just return the TextFormField widget.
    if (labelText != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label text
          CustomText(
              text: labelText!,
              color: const Color(0xFF262627),
              fontSize: 15,
              fontWeight: FontWeight.w600),
          AppGaps.hGap8,
          // Text field
          hasShadow
              ? PhysicalModel(
                  color: Colors.transparent,
                  elevation: 10,
                  shadowColor: Colors.black.withOpacity(0.25),
                  child: textFormFieldWidget(context),
                )
              : textFormFieldWidget(context),
        ],
      );
    } else {
      // Text field
      return hasShadow
          ? PhysicalModel(
              color: Colors.transparent,
              elevation: 10,
              shadowColor: Colors.black.withOpacity(0.25),
              child: textFormFieldWidget(context))
          : textFormFieldWidget(context);
    }
  }
}

class TopLogo extends StatelessWidget {
  const TopLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssetImages.topLogo, fit: BoxFit.cover);
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF205084),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header

          // if(Platform.isAndroid)
          GestureDetector(
            onTap: () => Get.toNamed(RoutesStrings.profile),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(24))),
              padding: EdgeInsets.only(
                  left: 16,
                  top: Platform.isAndroid ? 40 : 60,
                  right: 16,
                  bottom: 25),
              child: const Row(
                children: [
                  // User Avatar
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF205084),
                      radius: 22,
                      child: CustomText(
                        text: 'GU',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  AppGaps.wGap15,
                  // User Info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Guest User',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF205084),
                      ),
                      CustomText(
                        text: 'guest.user@gmail.com',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Spacer(),
                  Center(
                    child: Icon(Icons.arrow_forward_ios_rounded, size: 20),
                  ),
                ],
              ),
            ),
          ),
          // Menu Items
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    AppGaps.hGap8,
                    DrawerItem(
                      icon: Icons.home,
                      label: 'Home',
                      isActive: true,
                      onTap: () => Get.toNamed(RoutesStrings.home),
                    ),
                    DrawerItem(
                      icon: Icons.devices,
                      label: 'Devices',
                      onTap: () => Get.toNamed(RoutesStrings.devices),
                    ),
                    DrawerItem(
                      icon: Icons.receipt,
                      label: 'My Recipes',
                      onTap: () => Get.toNamed(RoutesStrings.myRecipes),
                    ),
                    DrawerItem(
                      icon: Icons.explore,
                      label: 'Explore Recipes',
                      onTap: () => Get.toNamed(RoutesStrings.exploreRecipes),
                    ),
                    DrawerItem(
                      icon: Icons.settings,
                      label: 'Settings',
                      onTap: () => Get.toNamed(RoutesStrings.settings),
                    ),
                    DrawerItem(
                      icon: Icons.privacy_tip,
                      label: 'Privacy Policy',
                      onTap: () => Get.toNamed(RoutesStrings.privacyPolicy),
                    ),
                    DrawerItem(
                      icon: Icons.contact_support,
                      label: 'Contact Us',
                      onTap: () => Get.toNamed(RoutesStrings.contactUs),
                    ),
                    DrawerItem(
                      icon: Icons.share,
                      label: 'Refer a friend',
                      onTap: () => Get.toNamed(RoutesStrings.referFriend),
                    ),
                    DrawerItem(
                      icon: Icons.info,
                      label: 'About Us',
                      onTap: () => Get.toNamed(RoutesStrings.aboutUs),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Logout Button
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.white),
                    AppGaps.wGap15,
                    HeadingText(
                      text: 'Logout',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback? onTap;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.label,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: Icon(
          icon,
          color: isActive ? const Color(0xFF1E3B5C) : Colors.white,
        ),
        title: HeadingText(
          text: label,
          fontSize: 16,
          color: isActive ? const Color(0xFF1E3B5C) : Colors.white,
          fontWeight: FontWeight.normal,
        ),
        tileColor: isActive ? const Color(0xFFC6DBF1) : const Color(0xFF1E466E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onTap: onTap,
      ),
    );
  }
}

class CustomTileSettings extends StatefulWidget {
  const CustomTileSettings({
    super.key,
    required this.title,
    this.showSwitch = false,
    this.showDropdown = false,
    this.showtrailingText = false,
    this.hasRightPadding = false,
    required this.trailingText,
  });
  final String title;
  final String trailingText;
  final bool? showSwitch;
  final bool? hasRightPadding;
  final bool? showDropdown;
  final bool? showtrailingText;

  @override
  State<CustomTileSettings> createState() => _CustomTileSettingsState();
}

class _CustomTileSettingsState extends State<CustomTileSettings> {
  bool switchChanged = false;
  String selectedValue = 'English';

  List<String> languages = ['English', 'Urdu'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width,
      height: 50,
      margin: const EdgeInsets.only(left: 16, right: 16),
      padding: EdgeInsets.only(
          left: 10, right: widget.hasRightPadding == true ? 16 : 0),
      decoration: const BoxDecoration(color: Color(0xFFE6EEF8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: widget.title,
            color: const Color(0xFF1E293B),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          Row(
            children: [
              if (widget.showtrailingText == true)
                CustomText(
                  text: widget.trailingText,
                  color: const Color(0xFF525252),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              if (widget.showSwitch == true) AppGaps.hGap10,
              if (widget.showSwitch == true)
                Transform.scale(
                  scale: 0.6,
                  child: Switch(
                    value: switchChanged,
                    onChanged: (newValue) {
                      // isSelected = newValue;
                      switchChanged = newValue;
                      setState(() {});
                    },
                    activeColor: const Color(0xFFFFFFFF),
                    activeTrackColor: const Color(0xFF2765A2),
                  ),
                ),
              if (widget.showDropdown == true)
                SizedBox(
                  width: 130,
                  child: CustomDropdown(
                    items: languages,
                    closedHeaderPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    initialItem: languages.first,
                    onChanged: (value) {},
                    decoration: CustomDropdownDecoration(
                        headerStyle: GoogleFonts.mulish(
                            fontSize: 16, color: const Color(0xFF525252)),
                        closedSuffixIcon: const Icon(
                          Icons.arrow_drop_down_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                        expandedSuffixIcon: const Icon(
                          Icons.arrow_drop_up_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                        closedFillColor: const Color(0xFFE6EEF8),
                        expandedFillColor: const Color(0xFFE6EEF8),
                        expandedBorderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        closedBorderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
