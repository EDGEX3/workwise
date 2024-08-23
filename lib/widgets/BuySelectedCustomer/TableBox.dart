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
                width: 0.5,
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
              child: Text('Date', style: TextStyle(color: TColors.white30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Information', style: TextStyle(color: TColors.white30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Bill No.', style: TextStyle(color: TColors.white30)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Amount', style: TextStyle(color: TColors.white30)),
            ),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: TColors.white25,
                width: 0.5,
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
                child: Text('20-10-2023', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Radhe Shyam Transport', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('159', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('20000', style: TextStyle(color: TColors.secondary)),
              ),
            ),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: TColors.white25,
                width: 0.5,
              ),
            ),
          ),
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
                child: Text('01-01-2024', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Radhe Shyam Transport', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('160', style: TextStyle(color: TColors.secondary)),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('70000', style: TextStyle(color: TColors.secondary)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
