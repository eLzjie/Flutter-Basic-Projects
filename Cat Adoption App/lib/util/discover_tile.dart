import 'package:cat_adoption_app/providers/navbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class DiscoverTile extends StatelessWidget {

  const DiscoverTile({super.key});

    void navigateToPetsPage(BuildContext context) {
      Navigator.pushNamed(context, '/homepage.pets');
      context.read<NavbarProvider>().navigateBottomBar(1); 
}


  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 25, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Discover your\n"
            "purrfect match.",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, height: 1.1),
          ),
          const SizedBox(height: 10),
          const Text("Find your furry companion today."),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              context.read<NavbarProvider>().navigateBottomBar(1);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFB6F92)),
              child: const Text(
                "Discover",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    height: 1.1),
              ),
            ),
          )
        ],
      ),
    );
  }

}
