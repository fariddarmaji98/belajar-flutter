import 'package:e_book/services/utils.dart';
import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({super.key});

  handleOnTap() {
    logger.i('===> menu clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: handleOnTap,
        child: Image.asset(
          'assets/icons/icon-burger-menu.png',
          width: 20,
          height: 16,
        ),
      ),
    );
  }
}
