import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/customers/widget/customerinfo.dart';
import 'package:workwise/widgets/listbox/listbox.dart';
import 'package:workwise/widgets/order/widget/orderinfo.dart';

class CustomerList extends StatelessWidget {
  const CustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      cacheExtent: 2,
      itemBuilder: (context, index) => Column(
        children: [
          ListBox(
              dataContainer: CustomerInfo(
                name: "Customer name",
                cid: "45681392",
                phone: "+91 9725636621",
                date: DateTime.now().toString().split(":")[0],
                email: "customer@pg.nex",
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
