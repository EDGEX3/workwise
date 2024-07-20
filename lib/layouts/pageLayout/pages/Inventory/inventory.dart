import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar/navbar.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/searchbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/ComboBox/ComboBox.dart';
import 'package:workwise/widgets/InputField/InputField.dart';
import 'package:workwise/widgets/Inventory/inventorylist.dart';
import 'package:workwise/widgets/basic/coustomButton.dart';
import 'package:workwise/widgets/basic/title.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: TSizes.spaceBtwSections,
              left: TSizes.spaceBtwSections,
              top: TSizes.spaceBtwSections,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const NavBar(),
                SizedBox(height: TSizes.spaceBtwSections),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Searchbar(),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        CoustomTitle("Inventory"),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        Container(
                          width: double.infinity,
                          child: coustomButton(
                            width: double.infinity,
                            height: 50,
                            wedget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Iconsax.add_square4),
                                const SizedBox(width: TSizes.defaultSpace),
                                const Text(
                                  'Add New Products',
                                  style: TextStyle(
                                    color: TColors.textSecondary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.15,
                                  ),
                                )
                              ],
                            ),
                            onClick: () {
                              showSheet(
                                context,
                                StatefulBuilder(
                                  builder: (BuildContext context, StateSetter setState) {
                                    // Local variables for storing form data
                                    String? selectedCategory;
                                    TextEditingController nameController = TextEditingController();
                                    TextEditingController brandController = TextEditingController();
                                    TextEditingController buyingPriceController = TextEditingController();
                                    TextEditingController sellingPriceController = TextEditingController();
                                    TextEditingController totalQtyController = TextEditingController();
                                    TextEditingController sellQtyController = TextEditingController();
                                    TextEditingController availableQtyController = TextEditingController();

                                    return SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.all(TSizes.lg),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 5,
                                              color: TColors.white30,
                                            ),
                                            const SizedBox(height: TSizes.spaceBtwSections),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                CoustomTitle("Product"),
                                              ],
                                            ),
                                            const SizedBox(height: TSizes.spaceBtwInputFields),
                                            Row(
                                              children: [
                                                InputField(
                                                  iconPath: 'assets/icons/Iconsax/twotone/user.svg',
                                                  labelText: 'Name',
                                                  hintText: 'Enter name',
                                                  controller: nameController,
                                                ),
                                                const SizedBox(width: TSizes.spaceBtwInputFields),
                                                InputField(
                                                  iconPath: 'assets/icons/Iconsax/twotone/shop.svg',
                                                  labelText: 'Brand Name',
                                                  hintText: 'Enter Brand Name',
                                                  controller: brandController,
                                                ),
                                                const SizedBox(width: TSizes.spaceBtwInputFields),
                                                ComboBox(
                                                  icon: Iconsax.barcode,
                                                  labelText: 'Category',
                                                  hintText: 'Choose Category',
                                                  items: [
                                                    DropdownMenuItem(
                                                      value: 'Category1',
                                                      child: Text('Category 1'),
                                                    ),
                                                    DropdownMenuItem(
                                                      value: 'Category2',
                                                      child: Text('Category 2'),
                                                    ),
                                                  ],
                                                  value: selectedCategory,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      selectedCategory = newValue;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: TSizes.spaceBtwSections),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                CoustomTitle("Pricing"),
                                              ],
                                            ),
                                            const SizedBox(height: TSizes.spaceBtwInputFields),
                                            Row(
                                              children: [
                                                InputField(
                                                  iconPath: 'assets/icons/Iconsax/twotone/dollar-circle.svg',
                                                  labelText: 'Buying Price',
                                                  hintText: 'Enter Buying Price',
                                                  controller: buyingPriceController,
                                                ),
                                                const SizedBox(width: TSizes.spaceBtwInputFields),
                                                InputField(
                                                  iconPath: 'assets/icons/Iconsax/twotone/coin.svg',
                                                  labelText: 'Selling Price',
                                                  hintText: 'Enter Selling Price',
                                                  controller: sellingPriceController,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: TSizes.spaceBtwSections),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                CoustomTitle("Stock"),
                                              ],
                                            ),
                                            const SizedBox(height: TSizes.spaceBtwInputFields),
                                            Row(
                                              children: [
                                                InputField(
                                                  iconPath: 'assets/icons/Iconsax/twotone/box.svg',
                                                  labelText: 'Total Qty.',
                                                  hintText: 'Enter Total Qty.',
                                                  controller: totalQtyController,
                                                ),
                                                const SizedBox(width: TSizes.spaceBtwInputFields),
                                                InputField(
                                                  iconPath: 'assets/icons/Iconsax/twotone/box-remove.svg',
                                                  labelText: 'Sell Qty.',
                                                  hintText: 'Enter Sell Qty.',
                                                  controller: sellQtyController,
                                                ),
                                                const SizedBox(width: TSizes.spaceBtwInputFields),
                                                InputField(
                                                  iconPath: 'assets/icons/Iconsax/twotone/box-tick.svg',
                                                  labelText: 'Available Qty.',
                                                  hintText: 'Enter Available Qty.',
                                                  controller: availableQtyController,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: TSizes.spaceBtwSections),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: coustomButton(
                                                    width: double.infinity,
                                                    height: 50,
                                                    buttonRadius: TSizes.buttonRadius,
                                                    boxBorderColor: TColors.white30,
                                                    color: TColors.primary,
                                                    wedget: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        const Text(
                                                          'Save',
                                                          style: TextStyle(
                                                            color: TColors.textSecondary,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    onClick: () {
                                                      // Save form data
                                                      final formData = {
                                                        'name': nameController.text,
                                                        'brand': brandController.text,
                                                        'category': selectedCategory,
                                                        'buyingPrice': buyingPriceController.text,
                                                        'sellingPrice': sellingPriceController.text,
                                                        'totalQty': totalQtyController.text,
                                                        'sellQty': sellQtyController.text,
                                                        'availableQty': availableQtyController.text,
                                                      };
                                                      print(formData);
                                                    },
                                                  ),
                                                ),
                                                const SizedBox(width: TSizes.spaceBtwInputFields),
                                                Expanded(
                                                  child: coustomButton(
                                                    width: double.infinity,
                                                    height: 50,
                                                    buttonRadius: TSizes.buttonRadius,
                                                    boxBorderColor: TColors.white30,
                                                    color: TColors.primary,
                                                    wedget: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        const Text(
                                                          'Delete',
                                                          style: TextStyle(
                                                            color: TColors.textSecondary,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    onClick: () {
                                                      // Clear form data
                                                      nameController.clear();
                                                      brandController.clear();
                                                      selectedCategory = null;
                                                      buyingPriceController.clear();
                                                      sellingPriceController.clear();
                                                      totalQtyController.clear();
                                                      sellQtyController.clear();
                                                      availableQtyController.clear();
                                                      setState(() {}); // Update the UI
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        const InventoryList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void showSheet(BuildContext ctx, Widget child) {
  showMaterialModalBottomSheet(
    context: ctx,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(TSizes.lg),
        topRight: Radius.circular(TSizes.lg),
      ),
    ),
    clipBehavior: Clip.antiAlias,
    backgroundColor: TColors.black10,
    builder: (BuildContext context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 508,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: child,
            ),
          ),
      );
    },
  );
}
