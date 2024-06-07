import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      padding: const EdgeInsets.all(TSizes.borderRadiusLg),
      decoration: ShapeDecoration(
        color: TColors.white30,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: TColors.white30),
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Iconsax.search_normal4, size: 24, color: TColors.secondary),
          Container(
            width: 180,
            padding: EdgeInsets.only(top: 7),
            child: const TextField(
              textAlign: TextAlign.left,
             
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                ),
                hintText: "Search..."
              ),
  
              style: const TextStyle(
                color: TColors.secondary,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
