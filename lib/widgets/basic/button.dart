import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/controllers/NavigatorController.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

Container button(
      {required double width,
      required double height,
      double buttonRadius = TSizes.buttonRadius,
      Color color = TColors.white30,
      required Icon icon,
      required Function() onClick}) {
    final NavigatorController navigatorController = Get.put(NavigatorController());
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
          child: Transform.rotate(
              angle: navigatorController.Navcontainer["open"] == true ? 0.0: 3.14,
              child: icon
            ),),
    );
  }

