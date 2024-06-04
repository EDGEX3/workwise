import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class ListBox extends StatelessWidget {
  final Widget dataContainer;

  ListBox({super.key, required this.dataContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: TSizes.listMinHight,
          maxHeight: TSizes.listMaxHight,
          minWidth: double.infinity,
        ),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(TSizes.listRadiusLg)),
            color: TColors.white10,
          ),
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(TSizes.listRadiusLg)),
            onTap: () => {},
            child: Padding(
              padding: const EdgeInsets.all(TSizes.listPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dataContainer,
                  const Icon(Iconsax.arrow_right_3),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
