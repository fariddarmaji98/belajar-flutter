import 'package:e_book/screens/pages/home/recent_book/book.dart';
import 'package:e_book/screens/pages/home/trends/trend_card.dart';
import 'package:flutter/material.dart';
import 'package:e_book/models/book.dart';

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: bookLists
            .asMap()
            .map((index, item) {
              return MapEntry(
                index,
                TrendCard(
                  info: item,
                  index: index,
                  length: bookLists.length,
                ),
              );
            })
            .values
            .toList(),
      ),
    );
  }
}
