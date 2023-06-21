// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class FilterBar extends StatefulWidget {
  const FilterBar({super.key});

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Workwise.scaffoldBackgroundColor),
      child: Row(
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Workwise.primaryColor),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Workwise.primaryColor),
          ),
           Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width - 360),
              child: Material(
                color: Workwise.primaryColor,
                borderRadius: BorderRadius.circular(100),
            child:InkWell(
              borderRadius: BorderRadius.circular(100),
                onTap: () {
                  setState(() {
                    
                  });
                },
                child: Ink(
                  width: 50,
              height: 50,
                  child: Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
