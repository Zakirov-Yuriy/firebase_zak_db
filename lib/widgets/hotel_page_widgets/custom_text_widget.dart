import 'package:flutter/material.dart';
import '../../utils/colors.dart';

// Виджет CustomRowTextWidget представляет собой две строки с текстовыми элементами,
// которые отображаются в виде контейнеров с фоновым цветом.
class CustomRowTextWidget extends StatelessWidget {
  final List<String> firstRowTexts; // Список текстов для первой строки
  final List<String> secondRowTexts; // Список текстов для второй строки

  const CustomRowTextWidget({
    Key? key,
    required this.firstRowTexts,
    required this.secondRowTexts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                for (var text in firstRowTexts)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color:
                            AppColors.lightGrayColor, // Фоновый цвет контейнера
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.greyColor, // Цвет текста
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                for (var text in secondRowTexts)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color:
                            AppColors.lightGrayColor, // Фоновый цвет контейнера
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.greyColor, // Цвет текста
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
