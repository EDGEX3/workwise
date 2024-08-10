import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/listbox/listbox.dart';
import 'package:workwise/widgets/sells/widget/sellsinfo.dart';

class BuyList extends StatelessWidget {
  const BuyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      cacheExtent: 2,
      itemBuilder: (context, index) => Column(
        children: [
          ListBox(
              dataContainer: SellsInfo(
                name: "Customer name",
                pstetus: "paid",
                cid: "#45681392",
                date: DateTime.now().toString().split(":")[0],
                tamount: 200000,
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
