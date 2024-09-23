import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/profile.png'),
        ),
      ),
    );
  }
}
