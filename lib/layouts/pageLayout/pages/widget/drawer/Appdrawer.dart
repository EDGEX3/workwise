// File: app_drawer.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar/controllers/NavigatorController.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'DrawerController.dart';
import 'package:workwise/widgets/template/menuitems.dart';
import 'package:workwise/widgets/user/user.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final drawercontroller = Get.put(NavDrawerController());
    final NavigatorController navigatorController =
        Get.put(NavigatorController());
    return Drawer(
      backgroundColor: Colors.transparent,
      width: 320,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 34.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    "assets/icons/mini.png",
                    color: TColors.primary,
                    height: 38,
                    width: 38,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Workwise',
                  style: TextStyle(
                    color: TColors.primary,
                    fontSize: TSizes.lg,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.gl),
            Expanded(
              child: Obx(() {
                var CurrentPage = drawercontroller.currentItem.last;
                return ListView.separated(
                  itemBuilder: (context, index) {
                    final item = MenuItems.Items[index];
                    return ListTile(
                      title: Text(
                        item.title,
                        selectionColor: TColors.primary,
                        style: TextStyle(color: TColors.black60),
                      ),
                      selected: CurrentPage == item,
                      hoverColor: TColors.black10,
                      leading: Icon(item.icon),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(TSizes.borderRadiusSm + 1),
                      ),
                      onTap: () {
                        drawercontroller.currentItem.first=item;
                        drawercontroller.navigateTo(item);
                        navigatorController.updateWidth(0.0);
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  itemCount: MenuItems.Items.length,
                );
              }),
            ),
            ListTile(
              title: Text(MenuItems.Settings.title),
              selected:
                  drawercontroller.currentItem.last == MenuItems.Settings,
              hoverColor: TColors.black10,
              leading: Icon(MenuItems.Settings.icon),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(TSizes.borderRadiusSm + 1),
              ),
              onTap: () {
                drawercontroller.navigateTo(MenuItems.Settings);
                navigatorController.updateWidth(0.0);
              },
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            ListTile(
              title: Text(MenuItems.Logout.title),
              hoverColor: TColors.black10,
              leading: Icon(MenuItems.Logout.icon),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(TSizes.borderRadiusSm + 1),
              ),
              onTap: () {
                print("logout");
              },
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const User(
                username: 'Himanshu Patel', email: 'HimanshuPatel@pegvin.com')
          ],
        ),
      ),
    );
  }
}
