class BookList {
  String image;
  String author;
  String name;

  BookList({
    required this.image,
    required this.author,
    required this.name,
  });
}

final List<BookList> bookLists = [
  BookList(
    image: 'assets/images/trending-1.png',
    author: 'Guy Kawasaki',
    name: 'Enchantment',
  ),
  BookList(
    image: 'assets/images/trending-2.png',
    author: 'Aaron Mahnke',
    name: 'Lore',
  ),
  BookList(
    image: 'assets/images/trending-3.png',
    // author: 'Spencer Johnson, M.D',
    author: 'Spencer John ...',
    // name: 'Who Moved My Cheese',
    name: 'Who Moved ...',
  ),
  BookList(
    image: 'assets/images/recent-book-1.png',
    author: 'Ronda Byine',
    name: 'The Magic',
  ),
  BookList(
    image: 'assets/images/recent-book-2.png',
    author: 'Andy Weir',
    name: 'The Martian',
  ),
];
