import 'package:e_book/constans/themes_colors.dart';
import 'package:e_book/constans/themes_fonts.dart';
import 'package:e_book/models/book.dart';
import 'package:e_book/screens/pages/home/trends/image_card.dart';
import 'package:flutter/material.dart';

class TrendCard extends StatelessWidget {
  final BookList info;
  final int index;
  final int length;

  TrendCard({
    super.key,
    required this.info,
    required this.index,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    final bool isFirstContent = index == 0;
    final bool isLastContent = index == length - 1;

    return Container(
      margin: isFirstContent
          ? const EdgeInsets.only(right: 8)
          : isLastContent
              ? const EdgeInsets.only(left: 8)
              : const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageCard(image: info.image),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info.author,
                  style: mText12.copyWith(color: colorGrey),
                ),
                Text(
                  info.name,
                  style: smText14.copyWith(color: colorBlack),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
