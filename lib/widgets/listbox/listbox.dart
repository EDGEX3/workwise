// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

// ignore: must_be_immutable
class ListBox extends StatelessWidget {
  Widget DataContainer;
  ListBox({super.key, required this.DataContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: TSizes.listMinHight,
          maxHeight: TSizes.listMaxHight,
          minWidth: double.infinity,
        ),
        child: DecoratedBox(
          decoration: const BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(TSizes.listRadiusLg)),
              gradient: TColors.whiteGradients),
          child: InkWell(
            borderRadius:
                const BorderRadius.all(Radius.circular(TSizes.listRadiusLg)),
            key: key,
            onTap: () => {},
            child: Padding(
              padding: const EdgeInsets.all(TSizes.listPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [DataContainer, const Icon(Iconsax.arrow_right_3)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
