import 'package:flutter/material.dart';
import 'package:e_book/app/route.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ebook App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: generateRoute,
    );
  }
}
