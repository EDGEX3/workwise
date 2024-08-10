import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class BigInputField extends StatelessWidget {
  const BigInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Iconsax.dollar_circle3),
            const SizedBox(width: TSizes.defaultSpace),
            const Text(
              'Amount',
              style: TextStyle(
                color: TColors.white30,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.defaultSpace),
        Container(
          height: 100,
          width: 360,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1, 
                style: BorderStyle.solid, 
                color: TColors.white10,
              ),
            ),
          ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: TColors.secondary,
              fontSize: 32,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.35,
            ),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              suffixText: "\$",
              suffixStyle: TextStyle(
                color: TColors.white30,
                fontSize: 32,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.35,
              ),
              hintText: "2000",
              hintStyle: TextStyle(
                color: TColors.secondary,
                fontSize: 32,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.35,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
