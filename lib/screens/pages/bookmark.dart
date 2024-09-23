import 'package:e_book/constans/themes_fonts.dart';
import 'package:flutter/material.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Halaman Bookmark',
          style: smText20,
        ),
      ),
    );
  }
}
