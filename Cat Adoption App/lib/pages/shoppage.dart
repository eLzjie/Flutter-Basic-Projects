import 'dart:math';
import 'package:cat_adoption_app/pages/detail_page.dart';
import 'package:cat_adoption_app/providers/cats_provider.dart';
import 'package:cat_adoption_app/util/cat_tile.dart';
import 'package:cat_adoption_app/util/discover_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Shoppage extends StatefulWidget {
  const Shoppage({
    super.key,
  });

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  final ScrollController controller = ScrollController();
  CatsProvider? _catsProvider;

  get _cats => _catsProvider?.cats;

  //navigate
  void navigateToCatDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(cat: _cats[index]),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _catsProvider = Provider.of<CatsProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    final shuffledCats = List.from(_cats)..shuffle(Random());

    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            //intro container
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffFFC2D1),
                ),
                child: Row(
                  children: [
                    //header tile
                    const DiscoverTile(),
                    Image.asset(
                      'images/header_cat.png',
                      height: 150,
                    ),
                  ],
                ),
              ),
            ),

            //short message
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Newest Cats 😺",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "See All...",
                    style: TextStyle(fontSize: 15, color: Color(0xffFF8FAB)),
                  ),
                ],
              ),
            ),

            //cart
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return CatTile(
                    cat: shuffledCats[index],
                    onTap: () => navigateToCatDetails(index));
              },
            )
          ],
        ),
      ),
    );
  }
}
