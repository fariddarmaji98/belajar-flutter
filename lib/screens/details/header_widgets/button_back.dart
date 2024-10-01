import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    handleTap() {
      Navigator.pushNamed(context, '/');
    }

    return GestureDetector(
      onTap: handleTap,
      child: Image.asset(
        'assets/icons/icon-back.png',
        width: 8,
        height: 14,
      ),
    );
  }
}
