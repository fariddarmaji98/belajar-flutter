import 'package:e_book/constans/themes_colors.dart';
import 'package:e_book/screens/pages/home/header/header.dart';
import 'package:e_book/screens/pages/home/search/search.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
            ),
            decoration: const BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: const Column(
              children: [
                Header(),
                SizedBox(
                  height: 30,
                ),
                Search(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
