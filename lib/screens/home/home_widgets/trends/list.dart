import 'package:e_book/widgets/trend_card/index.dart';
import 'package:flutter/material.dart';
import 'package:e_book/models/book.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

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
