import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/app/themes/themes_fonts.dart';
import 'package:flutter/material.dart';

class DetailsInfo extends StatelessWidget {
  const DetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: smText14.copyWith(color: colorBlack2),
        ),
        const SizedBox(height: 6),
        Text(
          'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
          style: rText12.copyWith(color: colorGrey),
        )
      ],
    );
  }
}
