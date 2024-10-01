import 'package:e_book/screens/details/index.dart';
import 'package:e_book/screens/home/index.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case '/details':
      return MaterialPageRoute(builder: (context) => const DetailsScreen());
    default:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
