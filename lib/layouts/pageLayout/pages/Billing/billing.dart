// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:workwise/layouts/pageLayout/pages/widget/navbar/navbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/AutoCompleteTextField/AutoCompleteTextField.dart';
import 'package:workwise/widgets/ComboBox/ComboBox.dart';
import 'package:workwise/widgets/InputField/InputField.dart';
import 'package:workwise/widgets/basic/Box.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:workwise/widgets/basic/Title.dart';
import 'package:workwise/widgets/billing/BillingForm.dart';
import 'package:workwise/widgets/billing/TableBox.dart';

class Billing extends StatefulWidget {
  const Billing({super.key});

  @override
  _BillingState createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  String? selectedName;
  String? selectedPhone;
  String? selectedEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTitle("Billing"),
                      customButton(
                        width: 50,
                        height: 50,
                        wedge: Icon(Iconsax.printer4),
                        onClick: () {},
                        boxBorderColor: TColors.white30,
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child:  AutoCompleteTextField(
                                      labelText: "Name",
                                      hintText: "Select Customer Name",
                                      iconPath: 'assets/icons/Iconsax/twotone/user.svg',
                                      suggestions: [
                                        'Krunal Bhadesiya',
                                        'Himanshu Patel',
                                      ],
                                    ),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Expanded(
                            child:AutoCompleteTextField(
                              labelText: "Phone No.",
                              hintText: "Select Phone Number",
                              iconPath: 'assets/icons/Iconsax/twotone/call.svg',
                              suggestions: [
                                '+919725636621',
                                '+919510584955',
                              ],
                            )
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Expanded(
                            child:  AutoCompleteTextField(
                              labelText: 'Select Date',
                              hintText: 'Enter a date',
                              iconPath: 'assets/icons/Iconsax/twotone/sms.svg',
                              suggestions: [
                                '2024',
                                '2025',
                                '2026',
                                '2027',
                                '2028',
                              ], // List of suggestions
                              onChanged: (value) {
                                print('Selected value: $value');
                              },
                            ),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Expanded(
                            child: InputField(
                              iconPath: 'assets/icons/Iconsax/twotone/percentage-circle.svg',
                              labelText: "Tax No.",
                              hintText: "Enter Tax No.",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Container(
                    height: 620,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: BoxContainer(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  child: Padding(
                                    padding: EdgeInsets.all(TSizes.spaceBtwItems),
                                    child: TableBox(),
                                  ),
                                ),
                              ),
                              const SizedBox(height: TSizes.defaultSpace),
                              BoxContainer(
                                width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 25,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [Text("64,192 Rs")],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        BoxContainer(
                          width: 390,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: BillingForm(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
