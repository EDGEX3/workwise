import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/utils/const/text.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
      child: Container(
        width: TSizes.cardWidth,
        height: TSizes.cardHight,
        padding: EdgeInsets.all(TSizes.cardPadding),
        
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            gradient: TColors.whiteGradients),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Id : 567348758702384",
                      style: small,
                    ),
                    SizedBox(
                      height: TSizes.defaultMinSpace,
                    ),
                    Text(
                      "Name : Krunal bhadeshiya",
                      style: small,
                    ),
                    SizedBox(
                      height: TSizes.defaultMinSpace,
                    ),
                    Text(
                      "Tax : 755697355554",
                      style: small,
                    ),
                  ],
                ),
                Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Date : 29-12-2003",
                      style: small,
                    ),
                    SizedBox(
                      height: TSizes.defaultMinSpace,
                    ),
                    Text(
                      "Status : Pending",
                      style: small,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Amount",
                      style: mid,
                    ),
                    SizedBox(
                      height: TSizes.defaultMinSpace,
                    ),
                    Text(
                      "10000 \$",
                      style: TextStyle(fontFamily: 'Digital Numbers'),
                    ),
                  ],
                ),
                Image.asset(
                  "icons/loadingicon.png",
                  width: 64,
                  height: 64,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
