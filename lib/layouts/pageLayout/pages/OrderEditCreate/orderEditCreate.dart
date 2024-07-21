import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/OrderEditCreate/OrderInfo.dart';
import 'package:workwise/widgets/OrderEditCreate/Tag.dart';
import 'package:workwise/widgets/basic/Box.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:workwise/widgets/basic/Title.dart';

class OrderEditCreate extends StatelessWidget {
  const OrderEditCreate({super.key});

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
                      Row(
                        children: [
                          CustomTitle("OrderEditCreate"),
                          SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          Tag(title: "working")
                        ],
                      ),
                      customButton(
                          width: 50,
                          height: 50,
                          wedge: Icon(Iconsax.printer4),
                          onClick: () {},
                          boxBorderColor: TColors.white30),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  OrderInfo(
                      cid: "#EDG21081852",
                      name: "Krunal Bhadesiya",
                      phoneno: "+91 9725636621",
                      email: "krunlbhadesiya@lotusgroup.tech",
                      address1: "First Floor,Lotus Corporate Office",
                      address2: "Tech City-390001,Gandhinagar,Gujarat"),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Container(
                      height: 100,
                      child: BoxContainer(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: double.maxFinite,
                          child: Text("box")))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void addProductFrom() {}
