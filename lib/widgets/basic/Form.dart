import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:workwise/widgets/InputField/InputField.dart';

class OrdersForm extends StatelessWidget {
  const OrdersForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                              children: [
                                InputField(
                                  labelText: "Product ID",
                                  hintText: "EDGP102321",
                                ),
                                const SizedBox(height: TSizes.spaceBtwItems),
                                InputField(
                                  labelText: "Product Name",
                                  hintText: "Paper Towel",
                                ),
                                const SizedBox(height: TSizes.spaceBtwItems),
                                InputField(
                                  labelText: "Rate",
                                  hintText: "1000 Rs",
                                ),
                                const SizedBox(height: TSizes.spaceBtwItems),
                                InputField(
                                  labelText: "Qty.",
                                  hintText: "8",
                                ),
                                const SizedBox(height: TSizes.spaceBtwItems),
                                InputField(
                                  labelText: "Discount",
                                  hintText: "5%",
                                ),
                                const SizedBox(height: TSizes.spaceBtwItems),
                                InputField(
                                  labelText: "Tax",
                                  hintText: "5%",
                                ),
                                const SizedBox(height: TSizes.spaceBtwItems),
                                customButton(
                                  width: double.infinity,
                                  height: TSizes.buttonSize,
                                  buttonRadius: TSizes.buttonRadius,
                                  boxBorderColor: TColors.white30,
                                  color: TColors.primary,
                                  wedge: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Add Product',
                                        style: TextStyle(
                                          color: TColors.secondary,
                                          fontSize: TSizes.fontSizeSm,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onClick: () {},
                                ),
                                const SizedBox(height: TSizes.spaceBtwItems),
                                customButton(
                                  width: double.infinity,
                                  height: TSizes.buttonSize,
                                  buttonRadius: TSizes.buttonRadius,
                                  boxBorderColor: TColors.white30,
                                  color: TColors.primary,
                                  wedge: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Delete',
                                        style: TextStyle(
                                          color: TColors.secondary,
                                          fontSize: TSizes.fontSizeSm,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onClick: () {},
                                ),
                              ],
                            );
  }
}