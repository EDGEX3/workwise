// drawerController.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/widgets/template/menuitem.dart';
import 'package:workwise/widgets/template/menuitems.dart';
import 'package:workwise/layouts/pageLayout/pages/Billing/billing.dart';
import 'package:workwise/layouts/pageLayout/pages/Buy/buy.dart';
import 'package:workwise/layouts/pageLayout/pages/Customers/customers.dart';
import 'package:workwise/layouts/pageLayout/pages/DailyExpanse/dailyexpanse.dart';
import 'package:workwise/layouts/pageLayout/pages/Inventory/inventory.dart';
import 'package:workwise/layouts/pageLayout/pages/Orders/orders.dart';
import 'package:workwise/layouts/pageLayout/pages/Sells/sells.dart';
import 'package:workwise/layouts/pageLayout/pages/dashboard/dashboard.dart';

class NavDrawerController extends GetxController {
  var currentItem = [MenuItems.Items[0]].obs;

  void navigateTo(MenuItem item) {
    currentItem.first = item;
    print("Navigating to: ${item.title}"); // Debug print
  }

  void navigatePush(MenuItem item) {
    currentItem.add(item);
    print("Navigating to: ${item.title}"); // Debug print
  }

  void navigateBack() {
    if (currentItem.length > 1) {
      currentItem.removeLast();
    }
  }

  Widget getScreen() {
    switch (currentItem.last) {
      case MenuItems.Dashboard:
        return const Dashboard(key: Key("dashboard"));
      case MenuItems.Orders:
        return const Orders(key: Key("orders"));
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
        return const Dashboard(key: Key("dashboard"));
    }
  }
}
