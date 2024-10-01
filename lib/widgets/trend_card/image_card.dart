import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;

  const ImageCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          alignment: Alignment.center,
          scale: 0.2,
        ),
      ),
    );
  }
}
