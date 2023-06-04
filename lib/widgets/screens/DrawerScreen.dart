// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter/material.dart';
import 'package:workwise/widgets/template/navbar.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: (MediaQuery.of(context).size.height),
      width: 265,
      child: Navbar(),
    );
  }
}