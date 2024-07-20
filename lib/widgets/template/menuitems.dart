import 'package:iconsax/iconsax.dart';
import 'package:workwise/widgets/template/menuitem.dart';

class MenuItems {
  static const MenuItem Dashboard = MenuItem("Dashboard", Iconsax.category4);
  static const MenuItem Orders = MenuItem("Orders", Iconsax.box4);
  static const MenuItem Customers = MenuItem("Customers", Iconsax.people4);
  static const MenuItem Inventory = MenuItem("Inventory", Iconsax.bag4);
  static const MenuItem Billing = MenuItem("Billing", Iconsax.receipt_edit4);
  static const MenuItem Sells = MenuItem("Sells", Iconsax.money_recive4);
  static const MenuItem Buy = MenuItem("Buy", Iconsax.money_send4);
  static const MenuItem Settings = MenuItem("Settings", Iconsax.setting_24);
  static const MenuItem DailyExpanse =MenuItem("Daily Expanse", Iconsax.empty_wallet4);
  static const MenuItem Logout =MenuItem("Logout", Iconsax.logout4);

  // create child component
  static const MenuItem AddSells =MenuItem("AddSells", Iconsax.money_recive4);

  static const List<MenuItem> Items = [
    Dashboard,
    Orders,
    Customers,
    Inventory,
    Billing,
    Sells,
    Buy,
    DailyExpanse
  ];
}
