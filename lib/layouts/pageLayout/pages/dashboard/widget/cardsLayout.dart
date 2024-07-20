import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/basic/coustomButton.dart';
import 'package:workwise/widgets/card/card.dart';

class CardSection extends StatelessWidget {
  const CardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: Builder(
            builder: (context) {
              return coustomButton(
                width: 50,
                height: 250,
                wedget: const Icon(Iconsax.add_square4),
                onClick: () {},
              );
            },
          ),
        ),
        Container(
          height: TSizes.cardHight,
          margin: EdgeInsets.only(left: TSizes.spaceBtwCards + 50),
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            cacheExtent: 7,
            addAutomaticKeepAlives: false,
            itemBuilder: (context, index) => const OrderCard(),
            separatorBuilder: (context, index) =>
                const SizedBox(width: TSizes.spaceBtwCards),
          ),
        ),
      ],
    );
  }
}
