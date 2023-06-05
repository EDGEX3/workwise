import 'package:flutter/material.dart';
import '../../theme/theme.dart';

// ignore: must_be_immutable
class Togglebar extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Function menu = () {};
  bool isDrawer = true;
  String pagename = "";
  Togglebar(Function menu, bool isDrawer, String pagename, {super.key}) {
    // ignore: prefer_initializing_formals
    this.menu = menu;
    // ignore: prefer_initializing_formals
    this.isDrawer = isDrawer;
    // ignore: prefer_initializing_formals
    this.pagename = pagename;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    menu();
                  },
                  icon: Icon(
                      !isDrawer ? Icons.menu_rounded : Icons.arrow_back_ios)),
              Text(
                pagename,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const CircleAvatar(
                backgroundColor: Workwise.primaryColor,
                child: Image(
                image: AssetImage("assets/app_logo/main_app.png"),
                height: 15,
                width: 15,
              ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
