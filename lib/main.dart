// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workwise/theme/theme.dart';
import 'package:workwise/widgets/options/bill.dart';
import 'package:workwise/widgets/options/buyer.dart';
import 'package:workwise/widgets/options/dailyexpence.dart';
import 'package:workwise/widgets/options/dashboard.dart';
import 'package:workwise/widgets/options/inventory.dart';
import 'package:workwise/widgets/options/seller.dart';
import 'package:workwise/widgets/options/setting.dart';
import 'package:workwise/widgets/screens/DrawerScreen.dart';
import 'package:workwise/widgets/template/menuitem.dart';
import 'package:workwise/widgets/template/togglebar.dart';
import 'widgets/options/orders.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const Edgex());
}

class Edgex extends StatelessWidget {
  const Edgex({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WorkWise',
      home: Home(),
    );
  }
}

// ignore: must_be_immutable
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MenuItem currentItem = MenuItems.Dashboard;
  double xoffset = 0;
  bool isDrawer = false;
  double border = 0;
  
  void drawer() {
    setState(() {
      if (isDrawer) {
        xoffset = 0;
        border = 0;
        isDrawer = false;
      } else {
        xoffset = 265;
        border = 12;
        isDrawer = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Workwise.scaffoldBackgroundColor,
        body: Stack(
          children: [
            DrawerScreen(
                CurrentItem: currentItem,
                onSelectedItem: (item) {
                  setState(() {
                    currentItem = item;
                    drawer();
                  });
                }),
            AnimatedContainer(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(border),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(30, 34, 34, 34),
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 20.0,
                        spreadRadius: 4.0,
                      ),
                    ]),
                transform: Matrix4.translationValues(xoffset, 0, 0),
                duration: Duration(milliseconds: 300),
                child: Column(children: [
                  Togglebar(drawer, isDrawer, currentItem.title),
                  getScreen()
                ]))
          ],
        ));
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.Dashboard:
        return Dashboard();
      case MenuItems.Orders:
        return Orders();
      case MenuItems.Inventory:
        return Inventory();
      case MenuItems.Bill:
        return Bill();
      case MenuItems.DailyExpence:
        return Daily();
      case MenuItems.Seller:
        return Seller();
      case MenuItems.Buyer:
        return Buyer();
      case MenuItems.Setting:
        return Setting();
      default:
        return Dashboard();
    }
  }
}
