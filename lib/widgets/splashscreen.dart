import 'dart:async';
import 'package:flutter/material.dart';
import 'package:workwise/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _Splashscreen();
}

class _Splashscreen extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        alignment: Alignment.center,
        children: const <Widget>[
          Image(
            image: AssetImage('assets/background/splash_bg.png'),
            fit: BoxFit.cover,
            height: 1080,
            width: 1920,
          ),
          Image(
            image: AssetImage('assets/app_logo/main_app.png'),
            height: 60,
            width: 60,
          ),
        ],
      ),
    ));
  }
}
