import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/utils/const/text.dart';
import 'package:workwise/widgets/basic/button.dart';
import 'package:workwise/widgets/card/card.dart';

class NavigatorLayout extends StatelessWidget {
  const NavigatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text("hi"),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(),
            color: TColors.primary,
          ),
          child: Material(
            child: Padding(
              padding: EdgeInsets.only(
                right: TSizes.spaceBtwSections,
                left: TSizes.spaceBtwSections,
                top: TSizes.spaceBtwSections,
              ),
              child:Placeholder()
            ),
          ),
        ),
      ],
    );
  }
}
