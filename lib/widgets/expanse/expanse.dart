import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/expanse/widget/expanceInfo.dart';
import 'package:workwise/widgets/expanse/widget/expanseList.dart';

class Expanse extends StatelessWidget {
  const Expanse({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      cacheExtent: 2,
      itemBuilder: (context, index) => Column(
        children: [
          ExpanseInfo(),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          ExpanseList()
        ],
      ),
      itemCount: 5,
      
      separatorBuilder: (context, index) => SizedBox(
        height: TSizes.spaceBtwItems + TSizes.defaultSpace,
      ),
    );
  }
}
