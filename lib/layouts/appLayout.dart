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
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: MaterialApp(
        title: "Workwise the powerful friend",
        theme: AppTheme.appThemeData,
        home: const Scaffold(
          backgroundColor: TColors.secondary,
          body: Material(
            color: Colors.transparent,
            child: NavigatorLayout(),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
