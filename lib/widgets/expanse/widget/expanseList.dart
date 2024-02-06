import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/listbox/listbox.dart';

class ExpanseList extends StatelessWidget {
  const ExpanseList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5 * (TSizes.spaceBtwItems+TSizes.listMaxHight-15),
      child: ListView.separated(
        cacheExtent: 5,
        physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => ListBox(DataContainer: Text("$index")),
          separatorBuilder:(context, index) => SizedBox(height: TSizes.defaultSpace,) ,
          itemCount: 5),
    );
  }
}
