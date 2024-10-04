import 'package:e_book/app/themes/themes_colors.dart';
import 'package:e_book/screens/details/info_widgets/other_info/other_info_item.dart';
import 'package:flutter/material.dart';

class OtherInfo extends StatelessWidget {
  const OtherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 12,
        bottom: 13,
        left: 20,
        right: 20,
      ),
      decoration: const BoxDecoration(
        color: colorGreyInfo,
        borderRadius: BorderRadius.all(Radius.circular(9)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OtherInfoItem(
            label: 'Rating',
            value: '4.8',
          ),
          Container(
            width: 1,
            height: 30,
            color: colorBlack,
          ),
          OtherInfoItem(
            label: 'Number of pages',
            value: '180 Page',
          ),
          Container(
            width: 1,
            height: 30,
            color: colorBlack,
          ),
          OtherInfoItem(
            label: 'Language',
            value: 'ENG',
          ),
        ],
      ),
    );
  }
}
