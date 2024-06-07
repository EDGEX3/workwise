import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar/navbar.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/searchbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/basic/coustomButton.dart';
import 'package:workwise/widgets/basic/title.dart';
import 'package:workwise/widgets/order/orderlist.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

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
          const NavBar(),
          SizedBox(height: TSizes.spaceBtwSections),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Searchbar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  CoustomTitle("Orders"),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Container(
                    width: double.infinity,
                    child: coustomButton(
                      width: double.infinity,
                      height: 50,
                      wedget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Iconsax.add_square4),
                          const SizedBox(width: TSizes.defaultSpace),
                          const Text(
                            'Add New Order',
                            style: TextStyle(
                              color: TColors.textSecondary,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.15,
                            ),
                          )
                        ],
                      ),
                      onClick: () {
                        showSheet(
                            context,
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 5,
                                  color: TColors.white30,
                                ),
                              const SizedBox(height: TSizes.spaceBtwSections,),
                              const Searchbar()
                              ],
                            ));
                      },
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const OrderList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showSheet(BuildContext ctx, Widget childs) {
  showMaterialModalBottomSheet(
    context: ctx,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(TSizes.lg),
        topRight: Radius.circular(TSizes.lg),
      ),
    ),
    clipBehavior: Clip.antiAlias,
    backgroundColor: TColors.black10,
    builder: (BuildContext context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 508,
        child: ClipRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), child: Padding(
                padding: const EdgeInsets.all(TSizes.lg),
                child: childs,
              )),
        ),
      );
    },
  );
}
