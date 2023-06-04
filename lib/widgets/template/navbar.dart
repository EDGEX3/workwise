import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListView(
        children: [
          Row(
            children: [
              const Image(
                image: AssetImage("assets/app_logo/main_app.png"),
                height: 30,
                width: 30,
              ),
              const Spacer(
                flex: 1,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "USER NAME",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "123@gmail.com",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200),
                  )
                ],
              ),
              const Spacer(
                flex: 9,
              ),
              InkWell(
                child: Container(
                    height: 30,width: 30,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                  Icons.unfold_more,
                  color: Colors.white,
                ),),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildlistlile(String title, IconData icon) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.white,
    ),
    title: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
    onTap: () {},
  );
}
