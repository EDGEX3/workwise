import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/expanse/widget/expanceInfo.dart';
import 'package:workwise/widgets/expanse/widget/expanseList.dart';
import 'package:workwise/widgets/listbox/listbox.dart';

class Expanse extends StatelessWidget {
  const Expanse({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
          cacheExtent: 5,
      itemBuilder: (context, index) => Column(
        children: [
          ExpanseInfo(),
          SizedBox(height: TSizes.spaceBtwItems,),
          ExpanseList()
        ],
      ),
      itemCount: 5,
      
      separatorBuilder: (context, index) => SizedBox(
        height: TSizes.spaceBtwItems+TSizes.defaultSpace,
      ),
    ));
  }
}
