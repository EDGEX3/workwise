import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/dailyexpanse/widget/dailyexpanseInfo.dart';
import 'package:workwise/widgets/dailyexpanse/widget/dailyexpanseList.dart';

class DailyExpanse extends StatelessWidget {
  const DailyExpanse({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      cacheExtent: 2,
      itemBuilder: (context, index) => Column(
        children: [
          DailyExpanseInfo(),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          DailyExpanseList()
        ],
      ),
      itemCount: 5,

      separatorBuilder: (context, index) => SizedBox(
        height: TSizes.spaceBtwItems + TSizes.defaultSpace,
      ),
    );
  }
}
