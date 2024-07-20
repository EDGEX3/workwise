import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:workwise/layouts/pageLayout/pages/widget/navbar/navbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:workwise/widgets/basic/Title.dart';

class Billing extends StatelessWidget {
  const Billing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: TSizes.spaceBtwSections,
        left: TSizes.spaceBtwSections,
        top: TSizes.spaceBtwSections,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: TSizes.spaceBtwSections),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTitle("Billing"),
                      customButton(
                          width: 50,
                          height: 50,
                          wedge: Icon(Iconsax.printer4),
                          onClick: () {},
                          boxBorderColor: TColors.white30
                          )
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    children: [
                      Column(children: [],)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
