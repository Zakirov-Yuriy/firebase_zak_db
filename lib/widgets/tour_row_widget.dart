import 'package:flutter/material.dart';
import '../utils/colors.dart';

class TourRowWidget extends StatelessWidget {
  final String tourTitle;
  final String tourPrice;
  final Color textColor;
  final FontWeight fontWeight;

  const TourRowWidget({
    Key? key,
    required this.tourTitle,
    required this.tourPrice,
    required this.textColor,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tourTitle,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.w400,
            color: AppColors.greyColor,
          ),
          textAlign: TextAlign.start,
        ),
        Text(
          tourPrice,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'SFProDisplay',
            fontWeight: fontWeight,
            color: textColor,
          ),
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
