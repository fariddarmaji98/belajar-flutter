import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/services/utils.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  handleOnTap() {
    logger.i('===> search is tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: handleOnTap,
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: colorGreen,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: const Icon(
            Icons.search_rounded,
            color: colorWhite,
          ),
        ),
      ),
    );
  }
}
