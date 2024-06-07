import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/listbox/listbox.dart';
import 'package:workwise/widgets/order/widget/orderinfo.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
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
