import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workwise/db/db.dart';
import 'package:workwise/layouts/pageLayout/pages/Customers/model/customer.dart';
import 'package:workwise/layouts/pageLayout/pages/Customers/states/selectedCustomerState.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/customers/widget/customerinfo.dart';
import 'package:workwise/widgets/listbox/listbox.dart';

class CustomerList extends StatelessWidget {
  final void Function()? open;
  const CustomerList({super.key, this.open});

  @override
  Widget build(BuildContext context) {
    final CustomerState customerState = Get.put(CustomerState());

    // Fetch customers only if the list is empty
    if (customerState.customerList.isEmpty) {
      customerState.setCustomerList(db.getAll<Customer>());
    }

    return Obx(() {
      return customerState.customerList.isEmpty
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
              itemCount: customerState.customerList.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              itemBuilder: (context, index) {
                final customer = customerState.customerList[index];
                return ListBox(
                  onClick: () {
                    customerState.setCurrentCustomer(customer);
                    open?.call();
                  },
                  dataContainer: CustomerInfo(
                    name: customer.name,
                    cid: customer.id.toString(),
                    phone: customer.phoneNumber,
                    date: DateTime.now().toString().split(":")[0],
                    email: customer.email ?? '',
                  ),
                );
              },
            );
    });
  }
}
