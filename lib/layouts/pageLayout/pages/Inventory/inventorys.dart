// ignore_for_file: unused_import
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:realm/realm.dart';
import 'package:workwise/db/db.dart';
import 'package:workwise/layouts/pageLayout/pages/Inventory/model/inventory.dart';
import 'package:workwise/layouts/pageLayout/pages/Inventory/states/selectedInventoryState.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/searchbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/ComboBox/ComboBox.dart';
import 'package:workwise/widgets/InputField/InputField.dart';
import 'package:workwise/widgets/Inventory/inventorylist.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:workwise/widgets/basic/title.dart';

class Inventorys extends StatelessWidget {
  const Inventorys({super.key});

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
              children: [
                SizedBox(height: TSizes.spaceBtwSections),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: TSizes.spaceBtwSections),
                        Searchbar(),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        CustomTitle("Inventory"),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        _buildAddInventoryButton(context),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        InventoryList(
                          open: () {
                            _showAddInventorySheet(context);
                          },
                        ),
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

  Widget _buildAddInventoryButton(BuildContext context) {
    final InventoryState inventoryState = Get.put(InventoryState());
    return customButton(
      width: double.infinity,
      height: 50,
      wedge: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Iconsax.add_square4),
          SizedBox(width: TSizes.defaultSpace),
          Text(
            'Add New Inventory',
            style: TextStyle(
              color: TColors.textSecondary,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.15,
            ),
          ),
        ],
      ),
      onClick: () {
        inventoryState.clearCurrentInventory();
        _showAddInventorySheet(context);
      },
    );
  }

  void _showAddInventorySheet(BuildContext context) {
    showMaterialModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
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
              child: Padding(
                padding: const EdgeInsets.all(TSizes.lg),
                child: SingleChildScrollView(child: _buildInventoryForm(context)),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildInventoryForm(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final InventoryState inventoryState = Get.put(InventoryState());
    var inventory = inventoryState.currentInventory.value;

    final Map<String, dynamic> formData = {
      'name': inventory?.name ?? '',
      'brandName': inventory?.brandName ?? '',
      'category': inventory?.category ?? '',
      'buyingPrice': inventory?.buyingPrice.toString() ?? '',
      'sellingPrice': inventory?.sellingPrice.toString() ?? '',
      'totalQty': inventory?.totalQty.toString() ?? '',
      'sellQty': inventory?.sellQty.toString() ?? '',
      'availableQty': inventory?.availableQty.toString() ?? '',
    };

    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(width: 60, height: 5, color: TColors.white30),
          const SizedBox(height: TSizes.spaceBtwSections),
          _buildSectionHeader("Product"),
          const SizedBox(height: TSizes.spaceBtwItems),
          _buildProductDetails(formData),
          const SizedBox(height: TSizes.spaceBtwSections),
          _buildSectionHeader("Pricing"),
          const SizedBox(height: TSizes.spaceBtwItems),
          _buildProductPriceData(formData),
          const SizedBox(height: TSizes.spaceBtwSections),
          _buildSectionHeader("Stock"),
          const SizedBox(height: TSizes.spaceBtwItems),
          _buildProductStockData(formData),
          const SizedBox(height: TSizes.spaceBtwSections),
          _buildFormButtons(context, _formKey, formData, inventoryState),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, [Widget? trailing]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTitle(title),
        if (trailing != null) trailing,
      ],
    );
  }

  Widget _buildProductDetails(Map<String, dynamic> formData) {
    return Column(
      children: [
        Row(
          children: [
            InputField(
                iconPath: 'assets/icons/Iconsax/twotone/user.svg',
                labelText: 'Name',
                hintText: 'Enter product name',
                initialValue: formData['name'],
                onSaved: (value) => formData['name'] = value ?? '',
              ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/shop.svg',
              labelText: 'Brand Name',
              hintText: 'Enter Brand Name',
              initialValue: formData['brandName'],
              onSaved: (value) => formData['brandName'] = value ?? '',
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/barcode.svg',
              labelText: 'Category',
              hintText: 'Choose Category',
              initialValue: formData['category'],
              onSaved: (value) => formData['category'] = value ?? '',
            ),
            // ComboBox(
            //   iconPath: 'assets/icons/Iconsax/twotone/barcode.svg',
            //   labelText: 'Category',
            //   hintText: 'Choose Category',
            //   items: const [
            //     DropdownMenuItem(
            //       value: 'Category1',
            //       child: Text('Category 1'),
            //     ),
            //     DropdownMenuItem(
            //       value: 'Category2',
            //       child: Text('Category 2'),
            //     ),
            //   ],
            //   value: formData['category'],
            //   onChanged: (value) => formData['category'] = value ?? 'Category1',
            // ),
          ],
        )
      ],
    );
  }

  Widget _buildProductPriceData(Map<String, dynamic> formData) {
    return Column(
      children: [
        Row(
          children: [
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/dollar-circle.svg',
              labelText: 'Buying Price',
              hintText: 'Enter Buying Price',
              initialValue: formData['buyingPrice'],
              onSaved: (value) => formData['buyingPrice'] = value ?? '',
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/coin.svg',
              labelText: 'Selling Price',
              hintText: 'Enter Selling Price',
              initialValue: formData['sellingPrice'],
              onSaved: (value) => formData['sellingPrice'] = value ?? '',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProductStockData(Map<String, dynamic> formData) {
    return Column(
      children: [
        Row(
          children: [
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/box.svg',
              labelText: 'Total Qty.',
              hintText: 'Enter Total Qty.',
              initialValue: formData['totalQty'],
              onSaved: (value) => formData['totalQty'] = value ?? '',
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/box-remove.svg',
              labelText: 'Sell Qty.',
              hintText: 'Enter Sell Qty.',
              initialValue: formData['sellQty'],
              onSaved: (value) => formData['sellQty'] = value ?? '',
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            InputField(
              iconPath: 'assets/icons/Iconsax/twotone/box-tick.svg',
              labelText: 'Available Qty.',
              hintText: 'Enter Available Qty.',
              initialValue: formData['availableQty'],
              onSaved: (value) => formData['availableQty'] = value ?? '',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFormButtons(BuildContext context, GlobalKey<FormState> formKey,
      Map<String, dynamic> formData, InventoryState inventoryState) {
    return Row(
      children: [
        Expanded(
          child: customButton(
            width: double.infinity,
            height: TSizes.buttonSize,
            buttonRadius: TSizes.buttonRadius,
            boxBorderColor: TColors.white30,
            color: TColors.primary,
            wedge: const Center(child: Text('Save', style: _buttonTextStyle)),
            onClick: () {
              if (formKey.currentState?.validate() ?? false) {
                formKey.currentState?.save();
                _saveInventory(formData, inventoryState);
                Navigator.pop(context); // Close the bottom sheet
              }
            },
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Expanded(
          child: customButton(
            width: double.infinity,
            height: TSizes.buttonSize,
            buttonRadius: TSizes.buttonRadius,
            boxBorderColor: TColors.white30,
            color: TColors.primary,
            wedge: const Center(child: Text('Delete', style: _buttonTextStyle)),
            onClick: () {
              try {
                if (inventoryState.currentInventory.value != null) {
                  db.delete<Inventory>(inventoryState.currentInventory.value!);
                  inventoryState.deleteInventory(inventoryState.currentInventory.value!);
                  Navigator.pop(context);
                  formKey.currentState?.reset();
                }
              } catch (e) {
                print(e);
              }
            },
          ),
        ),
      ],
    );
  }

  static const TextStyle _buttonTextStyle = TextStyle(
    color: TColors.secondary,
    fontSize: TSizes.fontSizeSm,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  );

  void _saveInventory(
      Map<String, dynamic> formData, InventoryState inventoryState) {
    try {
      final id = inventoryState.currentInventory.value?.id ?? ObjectId();
      final inventory = Inventory(
        id,
        formData['name']!,
        formData['brandName']!,
        formData['category']!,
        formData['buyingPrice']!,
        formData['sellingPrice']!,
        formData['totalQty']!,
        formData['sellQty']!,
        formData['availableQty']!,
      );
      db.insertOrUpdate(inventory);
      inventoryState.upsertInventory(inventory);
    } catch (e) {
      print('Error saving customer: $e');
    }
  }
}
