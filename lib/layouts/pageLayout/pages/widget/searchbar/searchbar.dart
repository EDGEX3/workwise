import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/widgets/searchbox.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';

class Searchbar extends StatelessWidget {
  final Widget actionIcon;
  VoidCallback fn;

  Searchbar({
    super.key,
    this.actionIcon = const Icon(Iconsax.filter4),
    this.fn = defaults,
  });
  static void defaults() {
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SearchBox(),
        customButton(
          width: 50,
          height: 50,
          wedge: actionIcon,
          onClick: fn,
          boxBorderColor: TColors.white30,
        ),
      ],
    );
  }
}
