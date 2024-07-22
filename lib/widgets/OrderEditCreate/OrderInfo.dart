import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/OrderEditCreate/Tag.dart';

class OrderInfo extends StatelessWidget {
  final String name, cid, phoneno, email, address1, address2;
  const OrderInfo({
    super.key,
    required this.cid,
    required this.name,
    required this.address1,
    required this.address2,
    required this.email,
    required this.phoneno,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(name,
                style: TextStyle(
                  color: TColors.secondary,
                  fontSize: TSizes.fontSizeLg,
                  fontWeight: FontWeight.w600,
                  // letterSpacing: 0.15,
                )),
            const SizedBox(width: TSizes.spaceBtwItems),
            Tag(title: cid),
          ],
        ),
        SizedBox(
          height: TSizes.defaultSpace,
        ),
        Text(phoneno,
            style: TextStyle(
              color: TColors.white60,
              fontSize: TSizes.fontSizeExSm,
              fontWeight: FontWeight.w400,
              // letterSpacing: 0.15,
            )),
        SizedBox(
          height: TSizes.defaultSpace,
        ),
        Text(email,
            style: TextStyle(
              color: TColors.white60,
              fontSize: TSizes.fontSizeExSm,
              fontWeight: FontWeight.w400,
              // letterSpacing: 0.15,
            )),
        SizedBox(
          height: TSizes.defaultSpace,
        ),
        Text(address1,
            style: TextStyle(
              color: TColors.white60,
              fontSize: TSizes.fontSizeExSm,
              fontWeight: FontWeight.w400,
              // letterSpacing: 0.15,
            )),
        Text(address2,
            style: TextStyle(
              color: TColors.white60,
              fontSize: TSizes.fontSizeExSm,
              fontWeight: FontWeight.w400,
              // letterSpacing: 0.15,
            )),
      ],
    );
  }
}
