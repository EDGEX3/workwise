// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workwise/widgets/screens/DrawerScreen.dart';
import 'package:workwise/widgets/screens/HomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const Edgex());
}

class Edgex extends StatelessWidget {
  const Edgex({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WorkWise',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
       DrawerScreen(),
       HomeScreen()
      ],
    ));
  }
}
