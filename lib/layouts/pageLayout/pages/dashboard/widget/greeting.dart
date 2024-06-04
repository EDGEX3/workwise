import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';

Widget greeting(String username) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        username,
        style: const TextStyle(
          color: TColors.textSecondary,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
        textAlign: TextAlign.left,
      ),
      const SizedBox(height: 5),
      const Text(
        'Welcome Back!',
        style: TextStyle(
          color: TColors.textSecondary,
          fontSize: 24,
          fontWeight: FontWeight.w100,
        ),
      ),
    ],
  );
}
