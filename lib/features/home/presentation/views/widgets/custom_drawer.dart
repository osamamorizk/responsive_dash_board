import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 60,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(drawerItems[index].icon),
                  title: FittedBox(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.scaleDown,
                      child: Text(drawerItems[index].title)),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

final List<DrawerItem> drawerItems = const [
  DrawerItem(icon: Icons.home, title: "D A S H B O A R D"),
  DrawerItem(icon: Icons.person, title: "P R O F I L E"),
  DrawerItem(icon: Icons.info, title: "A B O U T"),
  DrawerItem(icon: Icons.logout, title: "L O G O U T"),
];

class DrawerItem {
  final IconData icon;
  final String title;

  const DrawerItem({required this.icon, required this.title});
}
