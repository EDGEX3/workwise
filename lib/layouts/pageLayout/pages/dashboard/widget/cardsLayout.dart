import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/basic/button.dart';
import 'package:workwise/widgets/card/card.dart';

class CardSection extends StatelessWidget {
  const CardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      button(
          width: 50,
          height: 250,
          icon: Icon(Iconsax.add_square4),
          onClick: () {}),
      Container(
        height: TSizes.cardHight,
        margin: EdgeInsets.only(left: TSizes.spaceBtwCards + 50),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          cacheExtent: 3,
          addAutomaticKeepAlives: false,
          itemBuilder:(context, index) => OrderCard(),
          separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwCards,),
        ),
      ),
    ]);
  }
}
