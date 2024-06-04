import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/Billing/billing.dart';
import 'package:workwise/layouts/pageLayout/pages/Buy/buy.dart';
import 'package:workwise/layouts/pageLayout/pages/Customers/customers.dart';
import 'package:workwise/layouts/pageLayout/pages/DailyExpanse/dailyexpanse.dart';
import 'package:workwise/layouts/pageLayout/pages/Inventory/inventory.dart';
import 'package:workwise/layouts/pageLayout/pages/Orders/orders.dart';
import 'package:workwise/layouts/pageLayout/pages/Sells/sells.dart';
import 'package:workwise/layouts/pageLayout/pages/dashboard/dashboard.dart';
import 'package:workwise/widgets/template/menuitem.dart';
import 'package:workwise/widgets/template/menuitems.dart';

class Drawercontroller extends GetxController {
  var currentItem = MenuItems.Items[0].obs;

  void navigateto(MenuItem item) {
    currentItem.value = item;
    print("Navigating to: ${item.title}"); // Debug print
    // Add navigation logic here if needed
  }

  Widget getScreen() {
    switch (currentItem.value) {
      case MenuItems.Dashboard:
        return Dashboard();
      case MenuItems.Orders:
        return Orders();
      case MenuItems.Inventory:
        return Inventory();
      case MenuItems.Billing:
        return Billing();
      case MenuItems.DailyExpanse:
        return DailyExpanse();
      case MenuItems.Sells:
        return Sells();
      case MenuItems.Customers:
        return Customers();
      case MenuItems.Buy:
        return Buy();
      default:
        return Dashboard();
    }
  }
}
