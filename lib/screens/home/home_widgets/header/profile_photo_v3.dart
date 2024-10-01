import 'package:e_book/services/utils.dart';
import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({super.key});

  handleOnTap() {
    logger.i('===> profile clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: handleOnTap,
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
