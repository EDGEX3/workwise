import 'package:flutter/material.dart';
import 'package:workwise/layouts/pageLayout/navigatorLayout.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/theme/theme.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Worlwise the  powerful friend",
      theme: appThemeData,
      home: const Scaffold(
        backgroundColor: TColors.secondary,
        body: Material(color: Colors.transparent, child: NavigatorLayout()),
      ),
      debugShowCheckedModeBanner: false,
      scrollBehavior:
          ScrollConfiguration.of(context).copyWith(scrollbars: false),
    );
  }
}
