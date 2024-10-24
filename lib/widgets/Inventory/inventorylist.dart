import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/db/db.dart';
import 'package:workwise/layouts/pageLayout/pages/Inventory/model/inventory.dart';
import 'package:workwise/layouts/pageLayout/pages/Inventory/states/selectedInventoryState.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/Inventory/widget/inventoryinfo.dart';
import 'package:workwise/widgets/listbox/listbox.dart';

class InventoryList extends StatelessWidget {
  final void Function()? open;
  const InventoryList({super.key, this.open} );

  @override
  Widget build(BuildContext context) {
    final InventoryState inventoryState = Get.put(InventoryState());

    // Fetch customers only if the list is empty
    if (inventoryState.inventoryList.isEmpty) {
      inventoryState.setInventoryList(db.getAll<Inventory>());
    }

    return Obx(() {
      return inventoryState.inventoryList.isEmpty
          ? Center(
        child: SizedBox(
          height: 200,
          width: double.maxFinite,
          child: Image(
            image: AssetImage("assets/icons/nodata.png"),
            color: TColors.secondary,
            width: 100,
            height: 100,
          ),
        ),
      )
          : ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        cacheExtent: 2,
        itemCount: inventoryState.inventoryList.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        itemBuilder: (context, index) {
          final inventory = inventoryState.inventoryList[index];
          return ListBox(
            onClick: () {
              inventoryState.setCurrentInventory(inventory);
              open?.call();
            },
            dataContainer: InventoryInfo(
              pid: inventory.id.toString(),
              name: inventory.name,
              category: inventory.category,
              bprice: inventory.buyingPrice,
              sprice: inventory.sellingPrice,
              tproduct: inventory.totalQty,
              sproduct: inventory.sellQty,
              rproduct: inventory.availableQty,
            ),
          );
        },
      );
    });

  }
}
