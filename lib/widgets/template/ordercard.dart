// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:workwise/theme/theme.dart';
// ignore: non_constant_identifier_names
Widget Ordercards(
    {required String buyerName,
    required String orderStatus,
    required String orderNumber,
    required int itemCount}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    margin: const EdgeInsets.only(left: 16,bottom: 16,top: 16),
    child: SizedBox(
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Buyer: $buyerName',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Order Status: $orderStatus',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'Order Number: $orderNumber',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'Item Count: $itemCount',
              style: TextStyle(color: Colors.grey),
            ),
            BarcodeWidget(
              barcode: Barcode.codabar(),
              data:orderNumber ,
              color: Workwise.secondaryColor, // Color of the bars
              width: 200, // Width of the barcode widget
              height: 50, // Height of the barcode widget
            ),
          ],
        ),
      ),
    ),
  );
}
