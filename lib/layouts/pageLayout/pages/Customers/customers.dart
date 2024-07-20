import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/searchbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/InputField/InputField.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:workwise/widgets/basic/Title.dart';
import 'package:workwise/widgets/customers/customerlist.dart';
import 'package:workwise/widgets/dailyexpanse/widget/tag.dart';

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
                SizedBox(height: TSizes.spaceBtwSections),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Searchbar(),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        CustomTitle("Customers"),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        Container(
                          width: double.infinity,
                          child: customButton(
                            width: double.infinity,
                            height: 50,
                            wedge: Row(
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
                                    child: Column(
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
                                            CustomTitle("Status"),
                                            Tag(title: "Pending")
                                          ],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwSections),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [CustomTitle("Personal")],
                                        ),
                                        const SizedBox(
                                            height: TSizes.spaceBtwItems),
                                        Row(
                                          children: [
                                            InputField(
                                              iconPath:
                                                  'assets/icons/Iconsax/twotone/user.svg',
                                              labelText: 'Name',
                                              hintText: 'Enter name',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwInputFields),
                                            InputField(
                                              iconPath:
                                                  'assets/icons/Iconsax/twotone/shop.svg',
                                              labelText: 'Farm Name',
                                              hintText: 'Enter farm name',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwInputFields),
                                            InputField(
                                              iconPath:
                                                  'assets/icons/Iconsax/twotone/location.svg',
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
                                              iconPath:
                                                  'assets/icons/Iconsax/twotone/call.svg',
                                              labelText: 'Phone No.',
                                              hintText: 'Enter phone number',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwInputFields),
                                            InputField(
                                              iconPath:
                                                  'assets/icons/Iconsax/twotone/whatsapp.svg',
                                              labelText: 'Whatsapp No.',
                                              hintText: 'Enter Whatsapp number',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwInputFields),
                                            InputField(
                                              iconPath:
                                                  'assets/icons/Iconsax/twotone/sms.svg',
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
                                            CustomTitle("Billing"),
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
                                                width: TSizes.spaceBtwInputFields),
                                            InputField(
                                              labelText: 'IFSC',
                                              hintText: 'Enter IFSC code',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwInputFields),
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
                                            CustomTitle("Business"),
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
                                                width: TSizes.spaceBtwInputFields),
                                            InputField(
                                              labelText: 'PAN',
                                              hintText: 'Enter PAN number',
                                              controller:
                                                  TextEditingController(),
                                            ),
                                            const SizedBox(
                                                width: TSizes.spaceBtwInputFields),
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
                                                child: customButton(
                                                    width: double.infinity,
                                                    height: TSizes.buttonSize,
                                                    buttonRadius:
                                                        TSizes.buttonRadius,
                                                    boxBorderColor:
                                                        TColors.white30,
                                                    color: TColors.primary,
                                                    wedge: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text(
                                                          'Save',
                                                          style: TextStyle(
                                                            color: TColors
                                                                .secondary,
                                                            fontSize: TSizes
                                                                .fontSizeSm,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    onClick: () {})),
                                            const SizedBox(
                                                width: TSizes.spaceBtwItems),
                                            Expanded(
                                                child: customButton(
                                                    width: double.infinity,
                                                    height: TSizes.buttonSize,
                                                    buttonRadius:
                                                        TSizes.buttonRadius,
                                                    boxBorderColor:
                                                        TColors.white30,
                                                    color: TColors.primary,
                                                    wedge: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text(
                                                          'Delete',
                                                          style: TextStyle(
                                                            color: TColors
                                                                .secondary,
                                                            fontSize: TSizes
                                                                .fontSizeSm,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    onClick: () {})),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Column(
                                  //   children: [
                                  //     Container(
                                  //       width: 60,
                                  //       height: 5,
                                  //       color: TColors.white30,
                                  //     ),
                                  //     const SizedBox(
                                  //       height: TSizes.spaceBtwSections,
                                  //     ),
                                  //     Searchbar(
                                  //         actionIcon:
                                  //             Icon(Iconsax.close_circle4),
                                  //         fn: () {
                                  //           Navigator.pop(context);
                                  //         })
                                  //   ],
                                  // )
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

void showSheet(BuildContext ctx, Widget childs) {
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
              child: Padding(
                padding: const EdgeInsets.all(TSizes.lg),
                child: childs,
              )),
        ),
      );
    },
  );
}
