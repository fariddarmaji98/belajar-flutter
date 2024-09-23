import 'package:e_book/constans/themes_colors.dart';
import 'package:e_book/screens/pages/bookmark.dart';
import 'package:e_book/screens/pages/cart.dart';
import 'package:e_book/screens/pages/home/home.dart';
import 'package:e_book/screens/pages/profile.dart';
import 'package:e_book/utils/utils.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedNavbar = 0;

  final _screens = [
    const Home(),
    const Bookmark(),
    const Cart(),
    const Profile(),
  ];

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

  handleOnTap(int i) {
    logger.i('===> $i');
    setState(() {
      _selectedNavbar = i;
    });
  }

  Color handleToggleColor(int index) {
    return _selectedNavbar == index ? colorGreen : colorGrey;
  }

  @override
  Widget build(BuildContext context) {
    Widget customNavbar() {
      const EdgeInsets margin = EdgeInsets.only(top: 15);

      return BottomNavigationBar(
        currentIndex: _selectedNavbar,
        onTap: handleOnTap,
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

    return Scaffold(
      bottomNavigationBar: customNavbar(),
      body: Stack(
        // render semua halaman dan bikin saling tindih, tapi yg diatas cuma 1 jadi kelihatan cuma dirender 1 halaman tapi aslinya semua dirender
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedNavbar != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
    );
  }
}
