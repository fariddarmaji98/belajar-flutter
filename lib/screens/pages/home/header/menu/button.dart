import 'package:e_book/utils/utils.dart';
import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({super.key});

  handleTap() {
    logger.i('===> menu clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: handleTap,
        child: Image.asset(
          'assets/icons/icon-burger-menu.png',
          width: 20,
          height: 16,
        ),
      ),
    );
  }
}
