import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/app/themes/themes_fonts.dart';
import 'package:flutter/material.dart';

class OtherInfoItem extends StatelessWidget {
  final String label;
  final String value;

  const OtherInfoItem({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: mText10.copyWith(color: colorDivider),
        ),
        Text(
          value,
          style: smText12.copyWith(color: colorBlack2),
        ),
      ],
    );
  }
}
