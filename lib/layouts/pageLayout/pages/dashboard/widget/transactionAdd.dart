import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/drawer/DrawerController.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar/controllers/NavigatorController.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:get/get.dart';
import 'package:workwise/widgets/template/menuitems.dart';

class TransactionAdd extends StatefulWidget {
  const TransactionAdd({Key? key}) : super(key: key);

  @override
  State<TransactionAdd> createState() => TransactionAddState();
}

class TransactionAddState extends State<TransactionAdd> {
  final navDrawerController = Get.put(NavDrawerController()); // Ensure this instance is available
  bool state = false;

  void toggle() {
    setState(() {
      state = !state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClipRect(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: TSizes.listMinHight,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                  vertical: 21),
              decoration: const BoxDecoration(gradient: TColors.blackGradients90),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  alignment: state ? Alignment.centerLeft : Alignment.centerRight,
                  width: 102,
                  child: customButton(
                    width: 46,
                    height: 46,
                    color: TColors.white25,
                    wedge: Icon(
                      Iconsax.send4,
                      color: TColors.secondary,
                      size: 20.0,
                    ),
                    boxBorderColor: TColors.white25,
                    buttonRadius: TSizes.borderRadiusxLg,
                    onClick: () {
                      // Correctly using the navigatePush function with an item
                      Get.find<NavDrawerController>().navigatePush(MenuItems.DailyExpanseAdd);
                    },
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  alignment: state ? Alignment.centerRight : Alignment.center,
                  width: 158,
                  child: customButton(
                    width: 46,
                    height: 46,
                    color: TColors.white25,
                    wedge: Icon(
                      Iconsax.received4,
                      color: TColors.secondary,
                      size: 20.0,
                    ),
                    boxBorderColor: TColors.white25,
                    buttonRadius: TSizes.borderRadiusxLg,
                    onClick: () {},
                  ),
                ),
                Container(
                  width: 102,
                  alignment: Alignment.centerRight,
                  child: customButton(
                    width: 46,
                    height: 46,
                    color: TColors.secondary,
                    wedge: Icon(
                      state?Iconsax.close_circle4:Iconsax.add_circle4,
                      color: TColors.primary,
                      size: 20.0,
                    ),
                    buttonRadius: TSizes.borderRadiusxLg,
                    onClick: () {
                      toggle();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
