// ignore_for_file: prefer_const_constructors, file_names, constant_identifier_names
import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../template/menuitem.dart';

class DrawerScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final MenuItem CurrentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  // ignore: non_constant_identifier_names
  const DrawerScreen(
      // ignore: non_constant_identifier_names
      {super.key,
      // ignore: non_constant_identifier_names
      required this.CurrentItem,
      required this.onSelectedItem});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: (MediaQuery.of(context).size.height),
      width: 265,
      child: Navbar(),
    );
  }

  Widget buildlistlile(MenuItem item) => ListTile(
        selected: CurrentItem == item,
        selectedTileColor: const Color.fromARGB(20, 0, 0, 0),
        leading: Icon(item.icon, color: Workwise.primaryColor, size: 20),
        horizontalTitleGap: 0,
        contentPadding: const EdgeInsets.only(left: 10, right: 10),
        title: Text(
          item.title,
          style: const TextStyle(
              color: Workwise.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onTap: ()=>onSelectedItem(item)
      );
  // ignore: non_constant_identifier_names
  Widget Navbar() {
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
        ...MenuItems.all.map(buildlistlile).toList(),
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

class MenuItems {
  static const Dashboard = MenuItem("Dashboard", Icons.graphic_eq_rounded);
  static const Orders = MenuItem("Orders", Icons.conveyor_belt);
  static const Inventory = MenuItem("Inventory", Icons.inventory_rounded);
  static const Bill = MenuItem("Bill", Icons.receipt_long_rounded);
  static const DailyExpence =
      MenuItem("Daily Expence", Icons.calendar_today_rounded);
  static const Seller = MenuItem("Seller", Icons.sell_outlined);
  static const Buyer = MenuItem("Buyer", Icons.shopping_cart_checkout_outlined);
  static const Setting = MenuItem("Settings", Icons.settings_outlined);
  static const all = <MenuItem>[
    Dashboard,
    Orders,
    Inventory,
    Bill,
    DailyExpence,
    Seller,
    Buyer,
    Setting,
  ];
}
