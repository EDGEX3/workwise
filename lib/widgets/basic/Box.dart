// ignore_for_file: must_be_immutable

import 'package:flutter/widgets.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class BoxContainer extends StatelessWidget {
  final Widget child;
  final double width;
  double hight;
  BoxContainer(
      {super.key, required this.child, required this.width, this.hight=10});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        // height: height,
        decoration: BoxDecoration(
            color: TColors.white10,
            border: Border.all(
                color: TColors.white10,
                width: 1,
                strokeAlign: BorderSide.strokeAlignOutside),
            borderRadius:
                BorderRadius.all(Radius.circular(TSizes.borderRadiusLg))),
        child: child);
  }
}
