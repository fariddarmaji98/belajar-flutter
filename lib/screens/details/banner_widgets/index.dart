import 'package:flutter/material.dart';

class BannerDetails extends StatelessWidget {
  const BannerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 50),
      child: Image.asset(
        'assets/images/trending-1.png',
        height: 267,
      ),
    );
  }
}
