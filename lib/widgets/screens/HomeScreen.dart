// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:workwise/widgets/template/navbar.dart';
import 'package:workwise/widgets/template/togglebar.dart';

class HomeScreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var screens;
  HomeScreen(var data, {super.key}) {
    screens = data;
  }

  @override
  // ignore: no_logic_in_create_state
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  bool isDrawer = false;
  double border = 0;
  // ignore: prefer_typing_uninitialized_variables
  // ignore: non_constant_identifier_names
  void Drawer() {
    setState(() {
      if (isDrawer) {
        xoffset = 0;
        border = 0;
        isDrawer = false;
      } else {
        xoffset = 265;
        border = 12;
        isDrawer = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        // ignore: prefer_const_literals_to_create_immutables
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(border),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(30, 34, 34, 34),
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 20.0,
                spreadRadius: 4.0,
              ),
            ]),
        transform: Matrix4.translationValues(xoffset, 0, 0),
        duration: Duration(milliseconds: 300),
        child: Column(children: [
          Togglebar(Drawer, isDrawer, Page_selection['name'] as String),
          Page_selection['page'] as Widget
        ]));
  }
}
