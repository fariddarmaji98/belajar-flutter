import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/screens/home/home_widgets/categories/index.dart';
import 'package:e_book/screens/home/home_widgets/header/index.dart';
import 'package:e_book/screens/home/home_widgets/recent_book/index.dart';
import 'package:e_book/screens/home/home_widgets/search/index.dart';
import 'package:e_book/screens/home/home_widgets/trends/index.dart';
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
                SizedBox(
                  height: 30,
                ),
                RecentBook(),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Categories(),
          const SizedBox(height: 30),
          const Trends(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
