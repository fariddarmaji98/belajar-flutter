import 'package:e_book/constans/themes_colors.dart';
import 'package:e_book/constans/themes_fonts.dart';
import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello Sara,',
          style: smText16,
        ),
        Text(
          'Good Morning',
          style: rText14.copyWith(
            color: colorGrey,
          ),
        ),
      ],
    );
  }
}
