import 'package:cat_adoption_app/Components/bottom_nav_bar.dart';
import 'package:cat_adoption_app/Components/drawer.dart';
import 'package:cat_adoption_app/providers/navbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Homepage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  NavbarProvider? _navbarProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _navbarProvider = Provider.of<NavbarProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome!"),
        backgroundColor: const Color(0xFFFF8FAB),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
            color: Colors.black87,
          )
        ],
      ),
      bottomNavigationBar: const MyBottomBar(),
      drawer: const myDrawer(),
      body: _navbarProvider?.getPages()[_navbarProvider?.selectedIndex ?? 0] ??
          const Center(
            child: Text('Loading...'),
          ),
    );
  }
}
