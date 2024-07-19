import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/Inventory/widget/inventoryinfo.dart';
import 'package:workwise/widgets/listbox/listbox.dart';

class InventoryList extends StatelessWidget {
  const InventoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      cacheExtent: 2,
      itemBuilder: (context, index) => Column(
        children: [
          ListBox(
              dataContainer: InventoryInfo(
                name: "Customer name",
                category: "cosmetics",
                pid: "#45681392",
                bprice: 10,
                sprice: 77,
                tproduct: 100,
                rproduct: 77,
                sproduct: 33,
              ))
        ],
      ),
      itemCount: 5,
      separatorBuilder: (context, index) =>const SizedBox(
        height: TSizes.spaceBtwItems,
      ),
    );
  }
}
