import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workwise/widgets/navgenrator.dart';
import 'package:workwise/widgets/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(const Edgex());
}

class Edgex extends StatelessWidget {
  const Edgex({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorkWise',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(26, 27, 36, 1.0),
      ),
      // ignore: prefer_const_constructors
      home: Splashscreen(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assets/background/home.png'),
          Row(children: [
            Container(
              width: 300,
              color: const Color.fromRGBO(34, 36, 51, 0.8),
              height: MediaQuery.of(context).size.height,
              // ignore: prefer_const_constructors
              child:Navgenrator()
              ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 300,
                  color: const Color.fromRGBO(34, 36, 51, 0.8),
                  height: 86,
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }
}
