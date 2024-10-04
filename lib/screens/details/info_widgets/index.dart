import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/screens/details/info_widgets/button_info.dart';
import 'package:e_book/screens/details/info_widgets/details_info.dart';
import 'package:e_book/screens/details/info_widgets/header_info/index.dart';
import 'package:e_book/screens/details/info_widgets/other_info/index.dart';
import 'package:flutter/material.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: const Column(
        children: [
          HeaderInfo(),
          SizedBox(height: 30),
          DetailsInfo(),
          SizedBox(height: 30),
          OtherInfo(),
          SizedBox(height: 30),
          ButtonInfo(),
        ],
      ),
    );
  }
}
