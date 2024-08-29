import 'package:cat_adoption_app/providers/navbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0XFFFFE5EC),
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("images/Logo.png"),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            onTap: () {
              context.read<NavbarProvider>().navigateBottomBar(0);
              Navigator.of(context).pop();
            },
            title: const Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.pets),
            onTap: () {
              context.read<NavbarProvider>().navigateBottomBar(1);
              Navigator.of(context).pop();
            },
            title: const Text(
              "Pets",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text(
              "About",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
