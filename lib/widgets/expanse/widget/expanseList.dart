import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/expanse/widget/tag.dart';
import 'package:workwise/widgets/listbox/listbox.dart';

class ExpanseList extends StatelessWidget {
  const ExpanseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      cacheExtent: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ListBox(
          dataContainer: expanseListInfo(
              "Hardware", index % 2 == 0, "Modification", 10000)),
      separatorBuilder: (context, index) => const SizedBox(
        height: TSizes.spaceBtwItems,
      ),
      itemCount: 5,
    );
  }
}

Widget expanseListInfo(
    String title, bool isExpance, String tagtitle, int amount) {
  return ConstrainedBox(
    constraints: const BoxConstraints(
          maxHeight: 50.0,
        ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title,
                style: TextStyle(
                  color: TColors.secondary,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                )),
            const SizedBox(width: TSizes.spaceBtwItems),
            Tag(title: tagtitle)
          ],
        ),
        Row(
          children: [
            Icon(isExpance ? Iconsax.send4 : Iconsax.received4,
                size: TSizes.fontSizeLg),
            const SizedBox(width: TSizes.xs),
            Text(
              '${amount} USD',
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
