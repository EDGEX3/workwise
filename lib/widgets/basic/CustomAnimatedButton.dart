import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar/controllers/NavigatorController.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

Container customAnimatedButton({
  required double width,
  required double height,
  double buttonRadius = TSizes.buttonRadius,
  Color color = TColors.white30,
  double angle = 0.0,
  required Icon icon,
  required Function() onClick,
}) {
  final NavigatorController navigatorController = Get.find<NavigatorController>();

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
      child: Obx(() {
        return Transform.rotate(
          angle: navigatorController.navContainer["open"] == true ? 0.0 : angle,
          child: icon,
        );
      }),
    ),
  );
}
