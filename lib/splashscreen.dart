import 'dart:async';

import 'package:flutter/material.dart';
import 'package:workwise/theme/theme.dart';

import 'main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
    @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home(),));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Workwise.scaffoldBackgroundColor,
      body: Center(child:Image.asset("assets/app_logo/main_app.png"),),  
    );
  }
}