// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG support

class InputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? iconPath; // Optional parameter for asset icon path
  final IconData? icon;    // Optional parameter for Iconsax or other icons
  final TextEditingController? controller;

  const InputField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.iconPath,
    this.icon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 200,
        maxWidth: 350,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: TSizes.defaultSpace),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: TColors.white10)),
        ),
        child: Row(
          children: [
            if (iconPath != null) ...[
              SvgPicture.asset(
                iconPath!,
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                color: TColors.secondary,
              ),
              SizedBox(width: 20),
            ] else if (icon != null) ...[
              Icon(
                icon,
                size: TSizes.iconMd,
                color: TColors.secondary,
              ),
              SizedBox(width: 20),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    labelText,
                    style: TextStyle(
                        color: TColors.white30,
                        fontSize: TSizes.fontSizeSm,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: 24,
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hintText,
                      ),
                      style: TextStyle(
                          color: TColors.secondary,
                          fontSize: TSizes.fontSizeMd,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
