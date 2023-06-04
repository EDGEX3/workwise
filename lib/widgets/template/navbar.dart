import 'package:flutter/material.dart';
import 'package:workwise/theme/theme.dart';
import 'package:workwise/widgets/options/dashboard.dart';
import 'package:workwise/widgets/screens/HomeScreen.dart';
import 'package:workwise/widgets/template/pageControl.dart';

// ignore: non_constant_identifier_names

// ignore: non_constant_identifier_names
var Page_selection = {"name": "Dashboard", "page": const Dashboard()};

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  // ignore: non_constant_identifier_names

  void setpage(String pagename) {
    setState(() {
      Page_selection = pages[pagename]!.cast<String, Object>();
    });
    HomeScreen(Page_selection);
    print(Page_selection);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            const Spacer(
              flex: 1,
            ),
            const CircleAvatar(
              backgroundColor: Workwise.primaryColor,
              child: Image(
                image: AssetImage("assets/app_logo/main_app.png"),
                height: 15,
                width: 15,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "USER NAME",
                  style: TextStyle(
                      color: Workwise.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Text(
                  "123@gmail.com",
                  style: TextStyle(
                      color: Workwise.primaryColor,
                      fontWeight: FontWeight.w200,
                      fontSize: 12),
                )
              ],
            ),
            const Spacer(
              flex: 10,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(5),
              child: const SizedBox(
                height: 30,
                width: 30,
                child: Icon(
                  Icons.unfold_more,
                  color: Workwise.primaryColor,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        buildlistlile("Dashboard", Icons.graphic_eq_rounded, () {
          // ignore: avoid_setpage
          setpage("Dashboard");
        }),
        buildlistlile("Orders", Icons.conveyor_belt, () {
          // ignore: avoid_setpage
          setpage("Orders");
        }),
        buildlistlile("Inventory", Icons.inventory_rounded, () {
          // ignore: avoid_setpage
          setpage("Inventory");
        }),
        buildlistlile("Bill", Icons.receipt_long_rounded, () {
          // ignore: avoid_setpage
          setpage("Bill");
        }),
        buildlistlile("Daily Expence", Icons.calendar_today_rounded, () {
          // ignore: avoid_setpage
          setpage("Dailyexpence");
        }),
        buildlistlile("Seller", Icons.sell_outlined, () {
          // ignore: avoid_setpage
          setpage("Seller");
        }),
        buildlistlile("Buyer", Icons.shopping_cart_checkout_outlined, () {
          // ignore: avoid_setpage
          setpage("Buyer");
        }),
        buildlistlile("Settings", Icons.settings_outlined, () {
          setpage("Setting");
        }),
        const SizedBox(
          height: 50,
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Workwise.scaffoldBackgroundColor,
              border: Border.all(
                  color: Workwise.primaryColor,
                  style: BorderStyle.solid,
                  width: 0.5)),
        ),
      ],
    );
  }
}

Widget buildlistlile(String title, IconData icon, Function click) {
  return ListTile(
    leading: Icon(icon, color: Workwise.primaryColor, size: 20),
    horizontalTitleGap: 0,
    contentPadding: const EdgeInsets.only(left: 10, right: 10),
    title: Text(
      title,
      style: const TextStyle(
          color: Workwise.primaryColor,
          fontSize: 14,
          fontWeight: FontWeight.w600),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    onTap: () {
      click();
    },
  );
}

// ignore: non_constant_identifier_names

