import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class Tag extends StatelessWidget {
  final String title;
  const Tag({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: TColors.white25,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: TColors.white25),
          borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: TColors.secondary,
          fontSize: 8,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.09,
        ),
      ),
    );
  }
}
