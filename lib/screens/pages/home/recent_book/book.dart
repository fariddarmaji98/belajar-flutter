import 'dart:ffi';

import 'package:e_book/constans/themes_colors.dart';
import 'package:e_book/constans/themes_fonts.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Book extends StatelessWidget {
  final String book_name;
  final int progress;
  final String image;
  final bool is_first;
  final bool is_last;

  Book(
      {required this.book_name,
      required this.progress,
      required this.image,
      required this.is_first,
      required this.is_last});

  @override
  Widget build(BuildContext context) {
    final double progressPercentage = progress / 100;
    final bool enableMarginX = is_first || is_last;

    return Container(
      height: 150,
      padding: const EdgeInsets.all(15),
      margin: !enableMarginX
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: colorBorder),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 90,
          ),
          SizedBox(width: 10),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                book_name,
                style: smText14.copyWith(color: colorBlack2),
              ),
              CircularPercentIndicator(
                radius: 30,
                lineWidth: 8,
                animation: true,
                reverse: true,
                percent: progressPercentage,
                progressColor: colorGreen,
                circularStrokeCap: CircularStrokeCap.round,
                center: new Text("$progress%"),
              ),
              Text(
                '$progress% Completed',
                style: mText12.copyWith(color: colorGreyRecentBook),
              ),
            ],
          )
        ],
      ),
    );
  }
}
