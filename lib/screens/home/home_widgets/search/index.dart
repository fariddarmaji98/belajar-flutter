import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/app/themes/themes_fonts.dart';
import 'package:e_book/screens/home/home_widgets/search/search_button.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Find Your Favorite Book',
          hintStyle: mText12.copyWith(color: colorGrey),
          fillColor: colorGreySearch,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          isCollapsed: true,
          contentPadding: const EdgeInsets.all(18),
          suffixIcon: const SearchButton(),
        ),
      ),
    );
  }
}
