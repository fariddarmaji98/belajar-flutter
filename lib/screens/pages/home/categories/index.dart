import 'package:e_book/screens/pages/home/categories/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedIndex = 0;
  final List<String> _categories = [
    'All Books',
    'Comic',
    'Novel',
    'Manga',
    'Fairy Tales',
  ];

  handleOnTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        children: _categories
            .asMap()
            .entries
            .map((MapEntry map) => Category(
                  index: map.key,
                  name: map.value,
                  totalCategories: _categories.length,
                  selectedIndex: _selectedIndex,
                  handleOnTap: handleOnTap,
                ))
            .toList(),
      ),
    );
  }
}
