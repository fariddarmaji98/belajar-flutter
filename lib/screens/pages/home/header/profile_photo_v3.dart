import 'package:e_book/utils/utils.dart';
import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({super.key});

  handleTap() {
    logger.i('===> profile clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: handleTap,
        borderRadius: BorderRadius.circular(25),
        child: ClipOval(
          child: Image.asset(
            'assets/images/profile.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
