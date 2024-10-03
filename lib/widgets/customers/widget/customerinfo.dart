import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/expanse/widget/tag.dart';

class CustomerInfo extends StatelessWidget {
  final String name, cid, date, phone,email;
  const CustomerInfo(
      {super.key,
        required this.name,
        required this.cid,
        required this.date,
        required this.email,
        required this.phone
      });
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 80.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(name,
                  style: TextStyle(
                    color: TColors.secondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.15,
                  )),
              const SizedBox(width: TSizes.spaceBtwItems),
              Tag(title: date),
            ],
          ),
          Text(
            cid,
            style: TextStyle(
              color: TColors.textSecondary,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.15,
            ),
          ),
          Row(
            children: [
              Icon(Iconsax.call4, size: TSizes.fontSizeLg),
              const SizedBox(width: TSizes.xs),
              Text(
                phone,
                style: TextStyle(
                  color: TColors.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.13,
                ),
              ),
              const SizedBox(width: TSizes.sm,),
              Icon(Iconsax.sms4, size: TSizes.fontSizeLg),
              const SizedBox(width: TSizes.xs),
              Text(
                phone,
                style: TextStyle(
                  color: TColors.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.13,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
