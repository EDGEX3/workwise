// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:workwise/pages/order.dart';

class Navgenrator extends StatefulWidget {
  const Navgenrator({super.key});
  @override
  State<Navgenrator> createState() => _NavgenratorState();
}

double size = 0.0, pos = 380, rotation = 0;
bool state = false;

class _NavgenratorState extends State<Navgenrator> {
  void navstate() {
    setState(() {
      if (!state) {
        size = 160.0;
        state = true;
        pos = 180;
        rotation = 180 - 45;
      } else {
        size = 0.0;
        state = false;
        pos = 380;
        rotation = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      shrinkWrap: true,
      children: <Widget>[
        const ListTile(
          minLeadingWidth: 0,
          leading: Image(
              image: AssetImage('assets/app_logo/main_app.png'),
              height: 26,
              width: 26),
          title: Text(
            'WORKWISE',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 60),
        Navcreator(
            textinfo: 'Cash flow',
            nav_icon: Icons.dashboard,
            nav_color: Colors.white,
            nav_icon_color: Colors.white,
            nav_radious: 5,
            def: () {
              navstate();
            },
            traling: true,
            deg: rotation),
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: SizedBox(
              width: 110,
              height: size,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/background/tree.png"),
                      Column(
                        children: <Widget>[
                          const SizedBox(height: 15),
                          NavTree(
                              textinfo: 'Daily flow',
                              nav_icon: Icons.import_contacts,
                              nav_color: Colors.white,
                              nav_icon_color: Colors.white,
                              icon_weigth: 24,
                              def: () {},
                              spacing: 10,
                          ),
                           const SizedBox(height: 35),
                          NavTree(
                              textinfo: 'Buyer flow',
                              nav_icon: Icons.payment,
                              nav_color: Colors.white,
                              nav_icon_color: Colors.white,
                              icon_weigth: 24,
                              def: () {},
                              spacing: 10,
                            ),
                          const SizedBox(height: 35),
                          NavTree(
                              textinfo: 'Seller flow',
                              nav_icon: Icons.sell,
                              nav_color: Colors.white,
                              nav_icon_color: Colors.white,
                              icon_weigth: 24,
                              def: () {},
                              spacing: 10,
                             ),
                        ],
                      )
                    ]),
              )),
        ),
        Navcreator(
            def: () {
              if (kDebugMode) {
                print("Inventory");
              }
            },
            nav_color: Colors.white,
            nav_icon: Icons.layers,
            nav_icon_color: Colors.white,
            nav_radious: 5,
            textinfo: 'Inventory',
            traling: false,
            deg: rotation),
        Navcreator(
            def: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Order(),));
            },
            nav_color: Colors.white,
            nav_icon: Icons.book,
            nav_icon_color: Colors.white,
            nav_radious: 5,
            textinfo: 'Orders',
            traling: false,
            deg: rotation),
        Navcreator(
            def: () {
              if (kDebugMode) {
                print("Bill");
              }
            },
            nav_color: Colors.white,
            nav_icon: Icons.edit,
            nav_icon_color: Colors.white,
            nav_radious: 5,
            textinfo: 'Bill',
            traling: false,
            deg: rotation),
        SizedBox(height: pos),
        Navcreator(
            def: () {
              if (kDebugMode) {
                print("Setting");
              }
            },
            nav_color: Colors.white,
            nav_icon: Icons.settings,
            nav_icon_color: Colors.white,
            nav_radious: 5,
            textinfo: 'Setting',
            traling: false,
            deg: rotation),
        const SizedBox(height: 30),
      ],
    );
  }
}

class Navcreator extends StatefulWidget {
  const Navcreator(
      {super.key,
      required this.textinfo,
      required this.nav_icon,
      required this.nav_color,
      required this.nav_icon_color,
      required this.nav_radious,
      required this.def,
      required this.traling,
      required this.deg});
  final String textinfo;
  final IconData nav_icon;
  final Color nav_color;
  final Color nav_icon_color;
  final double nav_radious;
  final VoidCallback def;
  final bool traling;
  final double deg;
  @override
  State<Navcreator> createState() => _NavcreatorState();
}

class _NavcreatorState extends State<Navcreator> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.nav_icon, color: widget.nav_icon_color),
      minLeadingWidth: 0,
      title: Text(
        widget.textinfo,
        style: TextStyle(color: widget.nav_color),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.nav_radious))),
      onTap: () {
        widget.def();
      },
      trailing: (widget.traling)
          ? Transform.rotate(
              angle: widget.deg,
              child: Icon(Icons.expand_more, color: widget.nav_icon_color),
            )
          : null,
    );
  }
}

class NavTree extends StatefulWidget {
  const NavTree(
      {super.key,
      required this.textinfo,
      required this.nav_icon,
      required this.nav_color,
      required this.nav_icon_color,
      required this.icon_weigth,
      required this.def,
      required this.spacing,});
  final String textinfo;
  final IconData nav_icon;
  final Color nav_color;
  final Color nav_icon_color;
  final double icon_weigth;
  final VoidCallback def;
  final double spacing;
  @override
  State<NavTree> createState() => _NavTreeState();
}

class _NavTreeState extends State<NavTree> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.def,
       focusColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child:Row(
          children: <Widget>[
            Icon(widget.nav_icon,
                color: widget.nav_color, weight: widget.icon_weigth),
            SizedBox(width: widget.spacing),
            Text(widget.textinfo,
                style: TextStyle(color: widget.nav_icon_color))
          ],
        )));
  }
}
