import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/app/themes/themes_fonts.dart';
import 'package:e_book/services/utils.dart';
import 'package:flutter/material.dart';

class ButtonInfo extends StatelessWidget {
  const ButtonInfo({super.key});

  @override
  Widget build(BuildContext context) {
    handlePress() {
      logger.i('===> pressed on read now');
    }

    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: handlePress,
            style: ElevatedButton.styleFrom(
              backgroundColor: colorGreen,
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            child: Text(
              'Read Now',
              style: smText20.copyWith(color: colorWhite),
            ),
          ),
        )
      ],
    );
  }
}
