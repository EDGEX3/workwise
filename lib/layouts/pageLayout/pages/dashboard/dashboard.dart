import 'package:flutter/material.dart';
import 'package:workwise/layouts/pageLayout/pages/dashboard/widget/cardsLayout.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/navbar.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/listbox/listbox.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         NavBar(), 
         SizedBox(height: TSizes.spaceBtwSections,),
         CardSection(),
         SizedBox(height: TSizes.spaceBtwSections,),
        //  ListBox(DataContainer: Text("hi"))
      ],
    );
  }
}