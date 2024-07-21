import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/drawer/DrawerController.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar/controllers/NavigatorController.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/widgets/basic/CustomAnimatedButton.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final NavigatorController navigatorController = Get.find();
      final drawerController = Get.put(NavDrawerController());
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customAnimatedButton(
            width: 50,
            height: 50,
            color: TColors.secondary,
            icon: Icon(
              (drawerController.currentItem.length > 1)
                  ? Iconsax.close_circle4
                  : Iconsax.arrow_square_left4,
              color: TColors.primary,
            ),
            angle: 3.14,
            onClick: () {
              (drawerController.currentItem.length > 1)
                  ? drawerController.navigateBack()
                  : navigatorController.updateWidth(
                      navigatorController.navContainer["open"] != true
                          ? 345
                          : 0.0,
                    );
            },
          ),
          CircleAvatar(
            maxRadius: 20,
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "assets/icons/avatar.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
