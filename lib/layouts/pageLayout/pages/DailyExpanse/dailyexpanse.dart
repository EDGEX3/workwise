import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:workwise/layouts/pageLayout/pages/dashboard/widget/transactionAdd.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/searchbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/basic/Title.dart';
import 'package:workwise/widgets/expanse/expanse.dart';

class DailyExpanse extends StatelessWidget {
  const DailyExpanse({super.key});

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
                        CustomTitle("Daily Expanse"),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        const Expanse(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const TransactionAdd()
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
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Padding(
                padding: const EdgeInsets.all(TSizes.lg),
                child: childs,
              )),
        ),
      );
    },
  );
}
