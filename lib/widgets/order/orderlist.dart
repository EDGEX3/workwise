import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/drawer/DrawerController.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/listbox/listbox.dart';
import 'package:workwise/widgets/order/widget/orderinfo.dart';
import 'package:workwise/widgets/template/menuitems.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    NavDrawerController DrawerController = Get.put(NavDrawerController());
    return ListView.separated(
      shrinkWrap: true,
      cacheExtent: 2,
      itemBuilder: (context, index) => Column(
        children: [
          ListBox(
              dataContainer: OrderInfo(
            title: "Customer name",
            tagtitle: "Modification",
            amount: 10000,
            date: DateTime.now().toString().split(":")[0],
            OrderId: "1234567890",
          ),
          onClick: () {
            DrawerController.navigatePush(MenuItems.OrderEditCreate);
          },
          )
        ],
      ),
      itemCount: 5,
      separatorBuilder: (context, index) =>const SizedBox(
        height: TSizes.spaceBtwItems,
      ),
    );
  }
}
