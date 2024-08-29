import 'package:cat_adoption_app/pages/detail_page.dart';
import 'package:cat_adoption_app/providers/cats_provider.dart';
import 'package:cat_adoption_app/util/cat_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Petspage extends StatefulWidget {
  const Petspage({super.key});

  @override
  State<Petspage> createState() => _PetspageState();
}

class _PetspageState extends State<Petspage> {
  final ScrollController controller = ScrollController();

  //navigate
  void navigateToCatDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            DetailPage(cat: context.read<CatsProvider>().getCats()[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          controller: controller,
          child: Column(
            children: [
              //search bar
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 247, 235, 238),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search",
                      style:
                          TextStyle(color: Color.fromARGB(255, 132, 131, 131)),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),

              //short message
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "They're more than just pets. They're family.",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),

              //cart
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: context.read<CatsProvider>().getCats().length,
                itemBuilder: (context, index) {
                  return CatTile(
                    cat: context.read<CatsProvider>().getCats()[index],
                    onTap: () => navigateToCatDetails(index),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
