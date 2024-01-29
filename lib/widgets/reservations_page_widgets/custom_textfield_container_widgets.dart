import 'package:flutter/material.dart';
import '../../utils/colors.dart';

// Виджет CustomTextFieldContainer представляет собой контейнер с двумя текстовыми полями.
class CustomTextFieldContainer extends StatelessWidget {
  final String labelText1; // Текст метки для первого текстового поля
  final String hintText1; // Подсказка для первого текстового поля
  final String labelText2; // Текст метки для второго текстового поля
  final String hintText2; // Подсказка для второго текстового поля

  const CustomTextFieldContainer({
    Key? key,
    required this.labelText1,
    required this.hintText1,
    required this.labelText2,
    required this.hintText2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 52,
          child: TextField(
            decoration: InputDecoration(
              labelText: labelText1, // Метка для первого текстового поля
              hintText: hintText1, // Подсказка для первого текстового поля
              hintStyle: const TextStyle(
                  color: AppColors.labelStyleColor), // Стиль подсказки
              labelStyle: const TextStyle(
                  color: AppColors.labelStyleColor), // Стиль метки
              filled: true,
              fillColor: Colors.grey[200], // Цвет фона текстового поля
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none, // Убираем границу
              ),
            ),
          ),
        ),
        const SizedBox(height: 16), // Пространство между текстовыми полями
        SizedBox(
          height: 52,
          child: TextField(
            decoration: InputDecoration(
              labelText: labelText2, // Метка для второго текстового поля
              hintText: hintText2, // Подсказка для второго текстового поля
              hintStyle: const TextStyle(
                  color: AppColors.labelStyleColor), // Стиль подсказки
              labelStyle: const TextStyle(
                  color: AppColors.labelStyleColor), // Стиль метки
              filled: true,
              fillColor: Colors.grey[200], // Цвет фона текстового поля
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none, // Убираем границу
              ),
            ),
          ),
        ),
      ],
    );
  }
}
