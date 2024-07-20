import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/widgets/searchbox.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/widgets/basic/coustomButton.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SearchBox(),
        coustomButton(width: 50, height: 50, wedget: Icon(Iconsax.filter4), onClick: (){},boxBorderColor: TColors.white30)
      ],
    );
  }
}