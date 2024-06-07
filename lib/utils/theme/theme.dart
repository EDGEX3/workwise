import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/utils/theme/components-theme/cards.dart';
import 'package:workwise/utils/theme/components-theme/listtile.dart';

class AppTheme {
  static final ThemeData appThemeData = ThemeData(
    useMaterial3: true,
    fontFamilyFallback: ["popins"],
    colorScheme: ColorScheme.fromSeed(
      seedColor: TColors.secondary,
      brightness: Brightness.dark,
    ),
    cardTheme: tCard,
    fontFamily: "popins",
    iconTheme: const IconThemeData(
      color: TColors.secondary,
      size: TSizes.iconMd,
    ),
    splashColor: Colors.white24,
    primaryTextTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.09,
      ),
    ),
    listTileTheme: tlisttile
  );
}
