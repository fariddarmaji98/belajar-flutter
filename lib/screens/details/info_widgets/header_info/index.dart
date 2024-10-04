import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/app/themes/themes_fonts.dart';
import 'package:e_book/widgets/bookmark_button/index.dart';
import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enchantment',
                  style: smText20.copyWith(color: colorBlack2),
                ),
                Text(
                  'Guy Kawasaki',
                  style: mText14.copyWith(color: colorGrey),
                )
              ],
            ),
            Text(
              'Free Access',
              style: mText14.copyWith(color: colorGreen),
            ),
            // const BookmarkButton(),
          ],
        ),
        // Positioned(child: ,)
      ],
    );
  }
}
