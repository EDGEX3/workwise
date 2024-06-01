import 'package:flutter/material.dart';
import 'package:workwise/layouts/pageLayout/pages/dashboard/widget/cardsLayout.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/utils/const/text.dart';
import 'package:workwise/widgets/expanse/expanse.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          NavBar(),
          SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  CardSection(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Expanse(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
