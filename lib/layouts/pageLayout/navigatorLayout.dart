import 'package:flutter/material.dart';
import 'package:workwise/layouts/pageLayout/pages/dashboard/dashboard.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

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
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(),
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
                child: Dashboard()
                ),
          ),
        ),
      ],
    );
  }
}

