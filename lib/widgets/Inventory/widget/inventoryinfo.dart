import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/expanse/widget/tag.dart';

class InventoryInfo extends StatelessWidget {
  final String name, category,pid;
  final int sprice,bprice,tproduct,sproduct,rproduct;
  const InventoryInfo(
      {super.key,
        required this.pid,
        required this.name,
        required this.category,
        required this.bprice,
        required this.sprice,
        required this.rproduct,
        required this.sproduct,
        required this.tproduct
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
              Tag(title: category),
              const SizedBox(width: TSizes.spaceBtwItems),
              Tag(title: pid),
            ],
          ),
          Row(
            children: [
              Icon(Iconsax.dollar_circle4, size: TSizes.fontSizeLg),
              const SizedBox(width: TSizes.xs),
              Text(
                '${bprice} USD',
                style: TextStyle(
                  color: TColors.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.13,
                ),
              ),
              const SizedBox(width: TSizes.sm,),
              Icon(Iconsax.coin4, size: TSizes.fontSizeLg),
              const SizedBox(width: TSizes.xs),
              Text(
                '${sprice} USD',
                style: TextStyle(
                  color: TColors.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.13,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Iconsax.box4, size: TSizes.fontSizeLg),
              const SizedBox(width: TSizes.xs),
              Text(
                '${tproduct} M',
                style: TextStyle(
                  color: TColors.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.13,
                ),
              ),
              const SizedBox(width: TSizes.sm,),
              Icon(Iconsax.box_remove4, size: TSizes.fontSizeLg),
              const SizedBox(width: TSizes.xs),
              Text(
                '${rproduct} K',
                style: TextStyle(
                  color: TColors.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.13,
                ),
              ),
              const SizedBox(width: TSizes.sm,),
              Icon(Iconsax.box_tick4, size: TSizes.fontSizeLg),
              const SizedBox(width: TSizes.xs),
              Text(
                '${sproduct} K',
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
