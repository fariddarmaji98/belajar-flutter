import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/app/themes/themes_fonts.dart';
import 'package:e_book/services/utils.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Book extends StatelessWidget {
  final String bookName;
  final int progress;
  final String image;
  final int length;
  final int index;

  const Book({
    super.key,
    required this.bookName,
    required this.progress,
    required this.image,
    required this.length,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final double progressPercentage = progress / 100;
    final bool isFirstContent = index == 0;
    final bool isLastContent = index == length - 1;

    handleTap() {
      logger.i('===> on tap progress card');
      Navigator.pushNamed(context, '/details');
    }

    return GestureDetector(
      onTap: handleTap,
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(15),
        margin: isFirstContent
            ? const EdgeInsets.only(right: 8)
            : isLastContent
                ? const EdgeInsets.only(left: 8)
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
            const SizedBox(width: 10),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  bookName,
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
                  center: Text("$progress%"),
                ),
                Text(
                  '$progress% Completed',
                  style: mText12.copyWith(color: colorGreyRecentBook),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
