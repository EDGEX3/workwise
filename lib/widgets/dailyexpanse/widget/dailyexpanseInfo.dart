import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/utils/const/text.dart';

class DailyExpanseInfo extends StatelessWidget {
  const DailyExpanseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "December 29",
              textAlign: TextAlign.left,
              style: TextStyles.semmd,
            ),
            SizedBox(height: TSizes.defaultMinSpace),
            Text(
              "Friday",
              textAlign: TextAlign.left,
              style: TextStyles.semmd,
            ),
          ],
        ),
        const Text(
          "-400,000 USD",
          textAlign: TextAlign.right,
          style: TextStyles.semmd,
        ),
      ],
    );
  }
}
