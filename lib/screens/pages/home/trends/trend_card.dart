import 'package:e_book/constans/themes_colors.dart';
import 'package:e_book/constans/themes_fonts.dart';
import 'package:flutter/material.dart';

class TrendCard extends StatelessWidget {
  final String image;
  final String author;
  final String name;
  final int index;
  final int length;

  TrendCard({
    required this.image,
    required this.author,
    required this.name,
    required this.index,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    final bool isFirstContent = index == 0;
    final bool isLastContent = index == length - 1;

    return Container(
      height: 207,
      margin: isFirstContent
          ? const EdgeInsets.only(right: 8)
          : isLastContent
              ? const EdgeInsets.only(left: 8)
              : const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 160,
          ),
          const SizedBox(height: 8),
          Text(
            author,
            style: mText12.copyWith(color: colorGrey),
          ),
          Text(
            name,
            style: smText14.copyWith(color: colorBlack),
          ),
        ],
      ),
    );
  }
}
