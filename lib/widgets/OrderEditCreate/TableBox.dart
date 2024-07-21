import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';

class TableBox extends StatelessWidget {
  const TableBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: TColors.white25,
                width: 1.0,
              ),
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('No', style: TextStyle(color: TColors.white30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Product Name', style: TextStyle(color: TColors.white30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Rate', style: TextStyle(color: TColors.white30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Qty', style: TextStyle(color: TColors.white30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Discount', style: TextStyle(color: TColors.white30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Tax', style: TextStyle(color: TColors.white30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Total', style: TextStyle(color: TColors.white30)),
            ),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: TColors.white25,
                width: 1.0,
              ),
            ),
          ),
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('1', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Paper Role', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('2400', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('6', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('0%', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('18%', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('16,992', style: TextStyle(color: TColors.secondary)),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('2', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Paper Drum', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('5500', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('6', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('0%', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('18%', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('33,000', style: TextStyle(color: TColors.secondary)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
