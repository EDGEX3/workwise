import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

Container button(
      {required double width,
      required double height,
      double buttonRadius = TSizes.buttonRadius,
      Color color = TColors.white30,
      required Icon icon,
      required Function() onClick}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(buttonRadius),
      ),
      child: InkWell(
          borderRadius: BorderRadius.circular(buttonRadius),
          onTap: onClick,
          child: icon),
    );
  }

