import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/controllers/NavigatorController.dart';
import 'package:workwise/layouts/pageLayout/pages/dashboard/dashboard.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class NavigatorLayout extends StatelessWidget {
  const NavigatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigatorController navigatorController = Get.put(NavigatorController());

    return Stack(
      children: [
        Text("hi"),
        Obx(() {
          return AnimatedContainer(
            alignment: Alignment.centerRight,
            margin: EdgeInsetsDirectional.only(start: navigatorController.Navcontainer['width'] as double),
            duration: Duration(milliseconds: 500),
            curve: Curves.linear,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: TColors.primary,
            ),
            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(
                  right: TSizes.spaceBtwSections,
                  left: TSizes.spaceBtwSections,
                  top: TSizes.spaceBtwSections,
                ),
                child: Dashboard(),
              ),
            ),
          );
        }),
      ],
    );
  }
}
