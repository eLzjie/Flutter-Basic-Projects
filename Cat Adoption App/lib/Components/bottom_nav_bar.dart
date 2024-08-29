import 'package:cat_adoption_app/providers/navbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyBottomBar extends StatelessWidget {

  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
        hoverColor:  const Color(0xffFFC2D1), 
        activeColor:  const Color(0xffFB6F92), 
        color: const Color.fromARGB(255, 200, 67, 101), 
        iconSize: 30,
        tabBackgroundColor: const Color(0xffFFE5EC),
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => context.read<NavbarProvider>().navigateBottomBar(value),
      tabs: const [
        GButton(
          icon: Icons.home,
          text: " Home",
        ),
    
        GButton(
          icon: Icons.pets,
          text: " Pets",
        ),


      ],
    );
  }
}
