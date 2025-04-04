import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/searchbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/basic/Title.dart';
import 'package:workwise/widgets/basic/customButton.dart';
import 'package:workwise/widgets/customers/customerlist.dart';
import 'package:workwise/widgets/sells/sellslist.dart';

class Sells extends StatelessWidget {
  const Sells({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Padding(
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
                        Searchbar(),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        CustomTitle("Sells"),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        Container(
                          width: double.infinity,
                          child: customButton(
                            width: double.infinity,
                            height: 50,
                            wedge: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Iconsax.add_square4),
                                const SizedBox(width: TSizes.defaultSpace),
                                const Text(
                                  'Add New Sell',
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
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 5,
                                          color: TColors.white30,
                                        ),
                                        const SizedBox(
                                          height: TSizes.spaceBtwSections,
                                        ),
                                        Searchbar(
                                            actionIcon:
                                                Icon(Iconsax.close_circle4),
                                            fn: () {
                                              Navigator.pop(context);
                                            }),
                                        const SizedBox(
                                            height: TSizes.spaceBtwSections),
                                        const CustomerList(),
                                      ],
                                    ),
                                  ));
                            },
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        const SellsList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
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
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Padding(
                padding: const EdgeInsets.all(TSizes.lg),
                child: childs,
              )),
        ),
      );
    },
  );
}
