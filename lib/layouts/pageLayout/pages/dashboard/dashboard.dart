import 'package:flutter/material.dart';
import 'package:workwise/layouts/pageLayout/pages/dashboard/widget/cardsLayout.dart';
import 'package:workwise/layouts/pageLayout/pages/dashboard/widget/greeting.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/expanse/expanse.dart';

import 'widget/transactionAdd.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

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
                        greeting('Himanshu'),
                        SizedBox(height: TSizes.spaceBtwSections),
                        const CardSection(),
                        SizedBox(height: TSizes.spaceBtwSections),
                        const Expanse(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const TransactionAdd()
        ],
      ),
    );
  }
}
