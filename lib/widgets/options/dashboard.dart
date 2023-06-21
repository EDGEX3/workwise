// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workwise/theme/theme.dart';
import 'package:workwise/widgets/template/filter.dart';
import 'package:workwise/widgets/template/ordercard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Stack(
            alignment:
                Alignment(Alignment.centerRight.x, Alignment.centerRight.y),
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Workwise.scaffoldBackgroundColor,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Ordercards(
                      buyerName: 'John Doe',
                      orderStatus: 'Pending',
                      orderNumber: '51654948123',
                      itemCount: 5,
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 50,
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Workwise.primaryColor,
                ),
              )
            ],
          ),
          SizedBox(height: 16,),
          FilterBar()
        ],
      ),
    );
  }
}
