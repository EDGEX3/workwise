import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/utils/theme/components-theme/cards.dart';

ThemeData appThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      seedColor: TColors.secondary,
      brightness: Brightness.dark,
    ),
  cardTheme: tCard,
  fontFamily: 'popins',
  iconTheme: const IconThemeData(color: TColors.secondary,size: TSizes.iconMd),
  splashColor: Colors.white24
);
