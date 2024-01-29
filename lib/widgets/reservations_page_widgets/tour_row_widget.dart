import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class TourRowWidget extends StatelessWidget {
  final String tourTitle; // Название тура
  final String tourPrice; // Цена тура
  final Color textColor; // Цвет текста
  final FontWeight fontWeight; // Насыщенность шрифта

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
          tourTitle, // Выводим название тура
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.w400,
            color: AppColors.greyColor, // Цвет текста серый
          ),
          textAlign: TextAlign.start,
        ),
        Text(
          tourPrice, // Выводим цену тура
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'SFProDisplay',
            fontWeight: fontWeight, // Применяем указанную насыщенность шрифта
            color: textColor, // Используем указанный цвет текста
          ),
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
