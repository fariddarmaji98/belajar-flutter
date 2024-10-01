import 'package:e_book/app/themes/themes_fonts.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'halaman Cart',
          style: smText20,
        ),
      ),
    );
  }
}
