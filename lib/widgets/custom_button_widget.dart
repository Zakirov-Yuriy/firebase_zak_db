import 'package:firebase_zak_db/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText; // Текст кнопки
  final VoidCallback onPressed; // Функция обработки нажатия кнопки
  final Widget
      nextPage; // Следующий экран, на который переходит при нажатии кнопки

  const CustomButton({
    required this.buttonText,
    required this.onPressed,
    required this.nextPage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // Кнопка ElevatedButton
      onPressed: onPressed, // Вызываем функцию onPressed при нажатии на кнопку
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            AppColors.blueColor), // Задаем цвет фона кнопки
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15.0), // Задаем скругленные углы кнопки
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(const Size(
            double.infinity, 48)), // Устанавливаем минимальный размер кнопки
      ),
      child: Text(
        buttonText, // Отображаем текст кнопки
        style: const TextStyle(
          color: Colors.white, // Задаем цвет текста кнопки
          fontSize: 16, // Задаем размер шрифта текста кнопки
          fontFamily: 'SFProDisplay',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
