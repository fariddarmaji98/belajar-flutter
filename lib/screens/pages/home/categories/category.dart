import 'package:e_book/constans/themes_colors.dart';
import 'package:e_book/constans/themes_fonts.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final int index;
  final int totalCategories;
  final int selectedIndex;
  final Function handleOnTap;

  const Category({
    super.key,
    required this.handleOnTap,
    required this.name,
    required this.index,
    required this.totalCategories,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final bool isFirstContent = index == 0;
    final bool isLastContent = index == totalCategories - 1;
    final bool isSelected = selectedIndex == index;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => handleOnTap(index),
        child: Container(
          margin: isFirstContent
              ? const EdgeInsets.only(right: 4)
              : isLastContent
                  ? const EdgeInsets.only(left: 4)
                  : const EdgeInsets.symmetric(
                      horizontal: 4,
                    ),
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: isSelected ? colorGreen : colorGreyInfo,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            name,
            style: smText14.copyWith(
              color: isSelected ? colorWhite : colorGrey,
            ),
          ),
        ),
      ),
    );
  }
}
