// navigatorLayout.dart
// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/drawer/Appdrawer.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/drawer/DrawerController.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar/controllers/NavigatorController.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar/navbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class NavigatorLayout extends StatelessWidget {
  const NavigatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final navigatorController = Get.put(NavigatorController());
    final drawerController = Get.put(NavDrawerController());

    return Stack(
      children: [
        const AppDrawer(),
        Obx(() {
          final isOpen = navigatorController.navContainer['open'] as bool;
          final navWidth = navigatorController.navContainer['width'] as double;

          return AnimatedContainer(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            alignment: Alignment.center,
            margin: EdgeInsetsDirectional.only(start: navWidth),
            duration: const Duration(milliseconds: 400),
            curve: Curves.linear,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isOpen ? TSizes.borderRadiusxLg : 0.0),
                bottomLeft:
                    Radius.circular(isOpen ? TSizes.borderRadiusxLg : 0.0),
              ),
              color: TColors.primary,
            ),
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                        right: TSizes.spaceBtwSections,
                        left: TSizes.spaceBtwSections,
                        top: TSizes.spaceBtwSections,
                      ),
                      child: const NavBar()),
                  Expanded(child: Obx(() => drawerController.getScreen()))
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
