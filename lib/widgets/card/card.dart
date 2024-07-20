import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/utils/const/text.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: () {},
      borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
      child: Container(
        width: TSizes.cardWidth,
        height: TSizes.cardHight,
        padding: EdgeInsets.all(TSizes.cardPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          color: TColors.white10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildTopSection(),
            _buildBottomSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLeftColumn(),
        _buildRightColumn(),
      ],
    );
  }

  Widget _buildLeftColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextRow("Id : 567348758702384"),
        _buildTextRow("Name : Krunal Bhadeshiya"),
        _buildTextRow("Tax : 755697355554"),
      ],
    );
  }

  Widget _buildRightColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildTextRow("Order Date : 29-12-2003"),
        _buildTextRow("Status : Pending"),
      ],
    );
  }

  Widget _buildBottomSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Amount",
              style: TextStyles.mid,
            ),
            SizedBox(
              height: TSizes.defaultMinSpace,
            ),
            Text(
              "10000 \$",
              style: TextStyle(fontFamily: 'Digital Numbers'),
            ),
          ],
        ),
        Image.asset(
          "assets/qr.png",
          width: 64,
          height: 64,
          color: TColors.secondary,
        ),
      ],
    );
  }

  Widget _buildTextRow(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: TSizes.defaultMinSpace),
      child: Text(
        text,
        style: TextStyles.small,
      ),
    );
  }
}
