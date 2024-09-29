import 'package:e_book/screens/pages/home/recent_book/book.dart';
import 'package:flutter/material.dart';

class ListBook extends StatelessWidget {
  const ListBook({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> books = [
      {
        'book_name': 'The Magic',
        'image': 'assets/images/recent-book-1.png',
        'progress': 50,
      },
      {
        'book_name': 'The Martian',
        'image': 'assets/images/recent-book-2.png',
        'progress': 30,
      },
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: books
            .asMap()
            .map((index, item) {
              final bool isFirstContent = index == 0;
              final bool isLastContent = index == books.length - 1;
              return MapEntry(
                  index,
                  Book(
                    book_name: item['book_name'],
                    image: item['image'],
                    progress: item['progress'],
                    is_first: isFirstContent,
                    is_last: isLastContent,
                  ));
            })
            .values
            .toList(),
      ),
    );
  }
}
