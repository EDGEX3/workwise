import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/widgets/basic/button.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        button(
            width: 50,
            height: 50,
            color: TColors.secondary,
            icon: Icon(
              Iconsax.arrow_square_left4,
              color: TColors.primary,
            ),
            onClick: () {}),
        CircleAvatar(
          maxRadius: 15,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: (){},
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  "https://s.hdnux.com/photos/36/62/04/8069413/3/rawImage.jpg",
                )),
          ),
        )
      ],
    );
  }
}
