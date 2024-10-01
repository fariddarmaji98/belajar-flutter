import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/screens/details/header_widgets/index.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: ListView(
        children: [
          const HeaderDetails(),
        ],
      ),
    );
  }
}
