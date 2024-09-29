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
              return MapEntry(
                  index,
                  Book(
                    index: index,
                    book_name: item['book_name'],
                    image: item['image'],
                    progress: item['progress'],
                    length: books.length,
                  ));
            })
            .values
            .toList(),
      ),
    );
  }
}
