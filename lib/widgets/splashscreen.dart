import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
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
