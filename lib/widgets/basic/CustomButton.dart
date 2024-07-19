import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class customButton   extends StatelessWidget {
  final double width;
  final double height;
  final double buttonRadius;
  final Color color;
  final Color boxBorderColor;
  final Widget wedge;
  final VoidCallback onClick;

  const customButton  ({
    super.key,
    required this.width,
    required this.height,
    this.buttonRadius = TSizes.buttonRadius,
    this.color = TColors.white30,
    this.boxBorderColor = Colors.transparent,
    required this.wedge,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: boxBorderColor),
        borderRadius: BorderRadius.circular(buttonRadius),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(buttonRadius),
        onTap: onClick,
        child: wedge,
      ),
    );
  }
}
