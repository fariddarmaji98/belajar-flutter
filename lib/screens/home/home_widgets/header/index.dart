import 'package:e_book/screens/home/home_widgets/header/profile_name.dart';
import 'package:e_book/screens/home/home_widgets/header/profile_photo_v2.dart'
    as photo_v2;
import 'package:e_book/screens/home/home_widgets/header/menu/button.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: const Row(
        children: [
          photo_v2.PhotoProfile(),
          SizedBox(width: 8),
          Expanded(
            child: ProfileName(),
          ),
          SizedBox(width: 8),
          ButtonMenu(),
        ],
      ),
    );
  }
}
