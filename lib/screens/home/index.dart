import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/screens/home/home_widgets/index.dart';
import 'package:e_book/screens/home/home_widgets/navbar.dart';
import 'package:e_book/screens/home/bookmart_widgets/index.dart';
import 'package:e_book/screens/home/profile_widgets/index.dart';
import 'package:e_book/screens/home/cart_widgets/index.dart';
import 'package:e_book/services/utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedNavbar = 0;

  final _screens = [
    const Home(),
    const Bookmark(),
    const Cart(),
    const Profile(),
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
    return Scaffold(
      bottomNavigationBar: Navbar(
        handleOnTap: handleOnTap,
        selectedNavbar: _selectedNavbar,
      ),
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
