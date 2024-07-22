import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/OrderEditCreate/OrderInfo.dart';
import 'package:workwise/widgets/OrderEditCreate/TableBox.dart';
import 'package:workwise/widgets/OrderEditCreate/Tag.dart';
import 'package:workwise/widgets/basic/Box.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:workwise/widgets/basic/Form.dart';
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
                          CustomTitle("Order"),
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
                        boxBorderColor: TColors.white30,
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  OrderInfo(
                    cid: "#EDG21081852",
                    name: "Krunal Bhadesiya",
                    phoneno: "+91 9725636621",
                    email: "krunlbhadesiya@lotusgroup.tech",
                    address1: "First Floor,Lotus Corporate Office",
                    address2: "Tech City-390001,Gandhinagar,Gujarat",
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Container(
                    height: 620,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: BoxContainer(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(TSizes.spaceBtwItems),
                                    child: TableBox(),
                                  ),
                                ),
                              ),
                              const SizedBox(height: TSizes.defaultSpace),
                              BoxContainer(
                                width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 25,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [Text("64,192 Rs")],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        BoxContainer(
                          width: 390,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: OrdersForm(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
    );
  }
}

void addProductFrom() {}
