import 'package:e_book/app/themes/themes_colors.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final int selectedNavbar;
  final Function handleOnTap;

  Navbar({
    required this.selectedNavbar,
    required this.handleOnTap,
    super.key,
  });

  final List<Map<String, dynamic>> navbarItems = [
    {
      'icon': 'assets/icons/icon-home.png',
      'width': 20.0,
      'label': '',
    },
    {
      'icon': 'assets/icons/icon-bookmark.png',
      'width': 16.0,
      'label': '',
    },
    {
      'icon': 'assets/icons/icon-shopping-cart.png',
      'width': 20.0,
      'label': '',
    },
    {
      'icon': 'assets/icons/icon-profile.png',
      'width': 18.0,
      'label': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    const EdgeInsets margin = EdgeInsets.only(top: 15);

    Color handleToggleColor(int index) {
      return selectedNavbar == index ? colorGreen : colorGrey;
    }

    return BottomNavigationBar(
      currentIndex: selectedNavbar,
      onTap: (index) => handleOnTap(index),
      type: BottomNavigationBarType.fixed,
      items: navbarItems
          .asMap()
          .map((index, item) {
            return MapEntry(
              index,
              BottomNavigationBarItem(
                icon: Container(
                  margin: margin,
                  child: Image.asset(
                    item['icon'],
                    width: item["width"],
                    color: handleToggleColor(index),
                  ),
                ),
                label: item['label'],
              ),
            );
          })
          .values
          .toList(),
    );
  }
}
