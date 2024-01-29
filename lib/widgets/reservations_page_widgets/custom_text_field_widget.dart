import 'package:flutter/material.dart';
import '../../utils/colors.dart';

// Виджет CustomTextFieldWidget представляет собой кастомное текстовое поле.
class CustomTextFieldWidget extends StatelessWidget {
  final String titleText; // Текст заголовка
  final String subtitleText; // Текст подзаголовка
  final String descriptionText; // Текст описания

  const CustomTextFieldWidget({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    required this.descriptionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              width: 149,
              height: 29,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor, // Цвет фона контейнера
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 2, left: 5),
                    child: Icon(
                      Icons.star, // Иконка звезды
                      color: AppColors.primaryColor, // Цвет иконки
                    ),
                  ),
                  Text(
                    titleText, // Заголовок
                    style: const TextStyle(
                      color: AppColors.primaryColor, // Цвет текста
                      fontFamily: 'SFProDisplay',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              subtitleText, // Подзаголовок
              style: const TextStyle(
                fontSize: 22,
                fontFamily: 'SFProDisplay',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              descriptionText, // Описание
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.blueColor, // Цвет текста
                fontFamily: 'SFProDisplay',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
