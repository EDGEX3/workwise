// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:workwise/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  bool isDrawer = false;
  double border = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        // ignore: prefer_const_literals_to_create_immutables
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(border),
          color: Colors.white,
          boxShadow:const [
                    BoxShadow(
                      color: Color.fromARGB(56, 11, 14, 26),
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 20.0,
                      spreadRadius: 4.0,
                    ),
          ]
          ),
        transform: Matrix4.translationValues(xoffset,0, 0)..scale(1),
        duration: Duration(milliseconds: 300),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (isDrawer) {
                            xoffset = 0;
                            border = 0;
                            isDrawer = false;
                          } else {
                            xoffset = (MediaQuery.of(context).size.width)/2.5;
                            border = 12;
                            isDrawer = true;
                          }
                        });
                      },
                      icon: Icon(!isDrawer
                          ? Icons.menu_rounded
                          : Icons.arrow_back_ios)),
                  Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  CircleAvatar(
                    backgroundColor: Workwise.primaryColor,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
