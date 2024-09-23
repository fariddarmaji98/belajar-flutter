import 'package:e_book/constans/themes_fonts.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Halaman Profile',
        style: smText20,
      ),
    ));
  }
}
