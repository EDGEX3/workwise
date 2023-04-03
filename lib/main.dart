import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
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
      home: Home(),
    );
  }

  fromRGBO(int i, int j, int k, double d) {}
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Stack(children: <Widget>[
        Image.asset('assets/background/home.png'),
        Row(
          children: [
            Container(
              width: 300,
              color: const Color.fromRGBO(34, 36, 51, 0.8),
              height: MediaQuery.of(context).size.height,
              child: Column(children: [
                Container(
                  margin: const EdgeInsetsDirectional.all(30),
                  child: Row(
                    children: const [
                      Image(
                        image: AssetImage('assets/app_logo/main_app.png'),
                        width: 23,
                        height: 23,
                      ),
                      Spacer(),
                      Text(
                        'WorkWise',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(flex: 15)
                    ],
                  ),
                ),
              Container(
                // child: Row(children: [
                  
                // ]),
              )]),
            ),
          ],
        )
      ]),
    );
  }
}
