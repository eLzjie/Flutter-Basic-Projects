import 'package:cat_adoption_app/pages/petsPage.dart';
import 'package:cat_adoption_app/pages/shoppage.dart';
import 'package:flutter/material.dart';

class NavbarProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  final List<Widget> _pages = [
    const Shoppage(),
    const Petspage(),
  ];

    //navigate the bottom bar
  void navigateBottomBar(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  //get the pages
  List<Widget> getPages() {
    return _pages;
  }

  Function(int) get onTabChange => navigateBottomBar;
}
