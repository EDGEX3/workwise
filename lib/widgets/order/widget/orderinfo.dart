import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/expanse/widget/tag.dart';

class OrderInfo extends StatelessWidget {
  final String title, tagtitle, date, OrderId;
  final int amount;
  const OrderInfo(
      {super.key,
      required this.title,
      required this.tagtitle,
      required this.amount,
      required this.date,
      required this.OrderId});
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
              Text(title,
                  style: TextStyle(
                    color: TColors.secondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.15,
                  )),
              const SizedBox(width: TSizes.spaceBtwItems),
              Tag(title: tagtitle),
              const SizedBox(width: TSizes.spaceBtwItems),
              Tag(title: date)
            ],
          ),
          Text(
            OrderId,
            style: TextStyle(
              color: TColors.textSecondary,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.15,
            ),
          ),
          Row(
            children: [
              Icon(Iconsax.dollar_circle4, size: TSizes.fontSizeLg),
              const SizedBox(width: TSizes.xs),
              Text(
                '${amount} USD',
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
