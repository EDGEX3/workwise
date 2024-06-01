// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/layouts/pageLayout/pages/controllers/NavigatorController.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/widgets/basic/button.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    final NavigatorController navigatorController = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        button(
            width: 50,
            height: 50,
            color: TColors.secondary,
            icon: Icon(
              Iconsax.arrow_square_left4,
              color: TColors.primary,
            ),
            onClick: () {
              navigatorController.updateWidth(
                  navigatorController.Navcontainer["open"] != true
                      ? 300.0
                      : 0.0);
            }),
        CircleAvatar(
          maxRadius: 15,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {},
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "rawImage.jpg",
                  fit: BoxFit.fill,
                )),
          ),
        )
      ],
    );
  }
}
