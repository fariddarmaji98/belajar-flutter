import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/app/themes/themes_fonts.dart';
import 'package:e_book/screens/details/header_widgets/button_back.dart';
import 'package:e_book/screens/details/header_widgets/button_share.dart';
import 'package:flutter/material.dart';

class HeaderDetails extends StatelessWidget {
  const HeaderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ButtonBack(),
          Expanded(
            child: Center(
              child: Text(
                'Book Details',
                style: smText14.copyWith(color: colorBlack),
              ),
            ),
          ),
          const ButtonShare(),
        ],
      ),
    );
  }
}
