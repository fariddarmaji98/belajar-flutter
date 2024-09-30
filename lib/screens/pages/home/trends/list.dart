import 'package:e_book/screens/pages/home/recent_book/book.dart';
import 'package:e_book/screens/pages/home/trends/trend_card.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final List<Map<String, dynamic>> _trendList = [
    {
      'image': 'assets/images/trending-1.png',
      'author': 'Guy Kawasaki',
      'name': 'Enchantment',
    },
    {
      'image': 'assets/images/trending-2.png',
      'author': 'Aaron Mahnke',
      'name': 'Lore',
    },
    {
      'image': 'assets/images/trending-3.png',
      // 'author': 'Spencer Johnson, M.D',
      'author': 'Spencer John ...',
      // 'name': 'Who Moved My Cheese',
      'name': 'Who Moved ...',
    },
    {
      'image': 'assets/images/recent-book-1.png',
      'author': 'Ronda Byine',
      'name': 'The Magic',
    },
    {
      'image': 'assets/images/recent-book-2.png',
      'author': 'Andy Weir',
      'name': 'The Martian',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _trendList
            .asMap()
            .map((index, item) {
              return MapEntry(
                index,
                TrendCard(
                  image: item['image'],
                  author: item['author'],
                  name: item['name'],
                  index: index,
                  length: _trendList.length,
                ),
              );
            })
            .values
            .toList(),
      ),
    );
  }
}
