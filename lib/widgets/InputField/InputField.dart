import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData? icon;
  final TextEditingController? controller;

  const InputField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.icon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: TSizes.defaultSpace),
      
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: TColors.white10)),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
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
                      fontSize: 14,
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
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
