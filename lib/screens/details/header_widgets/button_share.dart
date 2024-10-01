import 'package:flutter/material.dart';

class ButtonShare extends StatelessWidget {
  const ButtonShare({super.key});

  @override
  Widget build(BuildContext context) {
    handleTap() {}

    return GestureDetector(
      onTap: handleTap,
      child: Image.asset(
        'assets/icons/icon-share.png',
        width: 17,
        height: 18,
      ),
    );
  }
}
