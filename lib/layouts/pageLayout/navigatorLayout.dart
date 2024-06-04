import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/controllers/NavigatorController.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/drawer/Appdrawer.dart';
import 'package:workwise/widgets/drawer/drawerController.dart';

class NavigatorLayout extends StatelessWidget {
  const NavigatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigatorController navigatorController =
        Get.put(NavigatorController());
    final Drawercontroller drawercontroller = Get.put(Drawercontroller());
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            const AppDrawer(),
            Obx(() {
              return AnimatedContainer(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                alignment: Alignment.center,
                margin: EdgeInsetsDirectional.only(
                    start: navigatorController.navContainer['width'] as double),
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        navigatorController.navContainer['open'] == true
                            ? TSizes.borderRadiusxLg
                            : 0.0),
                    bottomLeft: Radius.circular(
                        navigatorController.navContainer['open'] == true
                            ? TSizes.borderRadiusxLg
                            : 0.0),
                  ),
                  color: TColors.primary,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Obx(() => drawercontroller.getScreen()),
                ),
              );
            }),
          ],
        );
      },
    );
  }
}
