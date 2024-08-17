import 'package:flutter/material.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/basic/Box.dart';
import 'package:workwise/widgets/basic/Title.dart';
import 'package:workwise/widgets/dailyexpanse/dailyexpanse.dart';
import 'package:workwise/widgets/DailyExpanseAdd/DailyExpanseForm.dart';

class DailyExpanseAdd extends StatelessWidget {
  const DailyExpanseAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: TSizes.spaceBtwSections,
        vertical: TSizes.spaceBtwSections,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTitle("Daily Expanse"),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Scrollable List of Daily Expenses
                Expanded(
                  child: SingleChildScrollView(
                    child: DailyExpanse(),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                // Daily Expense Form
                BoxContainer(
                  width: 390,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                  child: DailyExpanseForm(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}