import 'package:e_book/services/utils.dart';
import 'package:flutter/material.dart';

class BookmarkButton extends StatelessWidget {
  const BookmarkButton({super.key});

  @override
  Widget build(BuildContext context) {
    handlePress() {
      logger.i('===> pressed bookmart');
    }

    return ElevatedButton(
      onPressed: handlePress,
      // child: Text('hai'),
      child: Image.asset(
        'assetc/icons/icon-bookmark-fill.png',
        width: 14,
        height: 18,
      ),
    );
  }
}
