import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar/navbar.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/searchbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/InputField/InputField.dart';
import 'package:workwise/widgets/basic/coustomButton.dart';
import 'package:workwise/widgets/basic/title.dart';
import 'package:workwise/widgets/customers/customerlist.dart';
import 'package:workwise/widgets/customers/widget/tagDropdown.dart';

class Customers extends StatelessWidget {
  const Customers({super.key});

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
                        CoustomTitle("Customers"),
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
                                  'Add New Customer',
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
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(TSizes.lg),
                                    child: Column(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 5,
                                          color: TColors.white30,
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwSections),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CoustomTitle("Status"),
                                            TagDropdown(
                                              title: 'Pending',
                                              items: ['Pending', 'Complete'],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwSections),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CoustomTitle("Personal"),
                                          ],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwItems),
                                        Row(
                                          children: [
                                            InputField(
                                              iconPath: 'assets/icons/Iconsax/twotone/user.svg',
                                              labelText: 'Name',
                                              hintText: 'Enter name',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwItems),
                                            InputField(
                                              iconPath: 'assets/icons/Iconsax/twotone/shop.svg',
                                              labelText: 'Farm Name',
                                              hintText: 'Enter farm name',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwItems),
                                            InputField(
                                              iconPath: 'assets/icons/Iconsax/twotone/location.svg',
                                              labelText: 'Address',
                                              hintText: 'Enter address',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwItems),
                                        Row(
                                          children: [
                                            InputField(
                                              iconPath: 'assets/icons/Iconsax/twotone/call.svg',
                                              labelText: 'Phone No.',
                                              hintText: 'Enter phone number',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwItems),
                                            InputField(
                                              iconPath: 'assets/icons/Iconsax/twotone/whatsapp.svg',
                                              labelText: 'Whatsapp No.',
                                              hintText: 'Enter Whatsapp number',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwItems),
                                            InputField(
                                              iconPath: 'assets/icons/Iconsax/twotone/sms.svg',
                                              labelText: 'Email',
                                              hintText: 'Enter email',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwSections),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CoustomTitle("Billing"),
                                          ],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwItems),
                                        Row(
                                          children: [
                                            InputField(
                                              labelText: 'Account',
                                              hintText: 'Enter account number',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwItems),
                                            InputField(
                                              labelText: 'IFSC',
                                              hintText: 'Enter IFSC code',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwItems),
                                            InputField(
                                              labelText: 'UPI',
                                              hintText: 'Enter UPI ID',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwSections),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CoustomTitle("Business"),
                                          ],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwItems),
                                        Row(
                                          children: [
                                            InputField(
                                              labelText: 'GST',
                                              hintText: 'Enter GST number',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwItems),
                                            InputField(
                                              labelText: 'PAN',
                                              hintText: 'Enter PAN number',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwItems),
                                            InputField(
                                              labelText: 'Type',
                                              hintText: 'Enter business type',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwSections),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: coustomButton(
                                                width: double.infinity,
                                                height: 50,
                                                buttonRadius:TSizes.buttonRadius,
                                                boxBorderColor: TColors.white30,
                                                color: TColors.primary,
                                                wedget: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    const Text(
                                                      'Save',
                                                      style: TextStyle(
                                                        color: TColors
                                                            .textSecondary,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.15,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                onClick: () {
                                                  // print("Save Onclick");
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                                width: TSizes.defaultSpace),
                                            Expanded(
                                              child: coustomButton(
                                                width: double.infinity,
                                                height: 50,
                                                buttonRadius:
                                                    TSizes.buttonRadius,
                                                boxBorderColor: TColors.white30,
                                                color: TColors.primary,
                                                wedget: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Text(
                                                      'Delete',
                                                      style: TextStyle(
                                                        color: TColors
                                                            .textSecondary,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.15,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                onClick: () {
                                                  // print("Delete Onclick");
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        const CustomerList(),
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


