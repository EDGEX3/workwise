import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/InputField/BigInputField.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:workwise/widgets/InputField/InputField.dart';

class SellsSelectedCustomerForm extends StatelessWidget {
  const SellsSelectedCustomerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            BigInputField(),
            const SizedBox(height: TSizes.spaceBtwItems),
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/box-tick.svg',
              labelText: "Lable",
              hintText: "Radhe Shyam Transport",
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/receipt-edit.svg',
              labelText: "Bill No.",
              hintText: "8",
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/calendar.svg',
              labelText: "Date",
              hintText: "5%",
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            customButton(
              width: double.infinity,
              height: TSizes.buttonSize,
              buttonRadius: TSizes.buttonRadius,
              boxBorderColor: TColors.white30,
              color: TColors.primary,
              wedge: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Save',
                    style: TextStyle(
                      color: TColors.secondary,
                      fontSize: TSizes.fontSizeSm,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15,
                    ),
                  ),
                ],
              ),
              onClick: () {},
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            customButton(
              width: double.infinity,
              height: TSizes.buttonSize,
              buttonRadius: TSizes.buttonRadius,
              boxBorderColor: TColors.white30,
              color: TColors.primary,
              wedge: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Delete',
                    style: TextStyle(
                      color: TColors.secondary,
                      fontSize: TSizes.fontSizeSm,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15,
                    ),
                  ),
                ],
              ),
              onClick: () {},
            ),
          ],
        )
    );
  }
}
