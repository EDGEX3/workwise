import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/drawer/DrawerController.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/listbox/listbox.dart';
import 'package:workwise/widgets/sells/widget/sellsinfo.dart';
import 'package:workwise/widgets/template/menuitems.dart';

class SellsList extends StatelessWidget {
  const SellsList({super.key});

  @override
  Widget build(BuildContext context) {
    NavDrawerController DrawerController = Get.put(NavDrawerController());
    return ListView.separated(
      shrinkWrap: true,
      cacheExtent: 2,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Column(
        children: [
          ListBox(
              dataContainer: SellsInfo(
                name: "Customer name",
                pstetus: "paid",
                cid: "#45681392",
                date: DateTime.now().toString().split(":")[0],
                tamount: 200000,
              ),
            onClick: () {
              DrawerController.navigatePush(MenuItems.SellsSelectedCustomer);
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
