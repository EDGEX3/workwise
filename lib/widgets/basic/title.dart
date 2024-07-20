import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';

Widget CoustomTitle(String title) {
  return Text(
    title,
    style: TextStyle(
      color: TColors.secondary,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.22,
    ),
  );
}
