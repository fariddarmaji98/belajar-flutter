import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/app/themes/themes_fonts.dart';
import 'package:e_book/screens/home/home_widgets/recent_book/list.dart';
import 'package:flutter/material.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Book',
            style: smText16.copyWith(
              color: colorBlack,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const ListBook(),
        ],
      ),
    );
  }
}
