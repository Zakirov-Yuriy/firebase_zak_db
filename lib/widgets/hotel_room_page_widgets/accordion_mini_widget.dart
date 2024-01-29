import 'package:flutter/material.dart';
import 'package:firebase_zak_db/utils/colors.dart';

// Виджет AccordionMiniWidget представляет собой компактный аккордеонный элемент,
// содержащий заголовок и контент, который можно развернуть или свернуть.
class AccordionMiniWidget extends StatefulWidget {
  final String title; // Заголовок аккордеона
  final Widget child; // Содержимое аккордеона

  AccordionMiniWidget({
    required this.title,
    required this.child,
  });

  @override
  _AccordionMiniWidgetState createState() => _AccordionMiniWidgetState();
}

class _AccordionMiniWidgetState extends State<AccordionMiniWidget> {
  bool _isExpanded =
      false; // Флаг для отслеживания раскрытия или сворачивания аккордеона

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded =
                  !_isExpanded; // Изменение состояния аккордеона при нажатии
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 16),
            child: Container(
              width: 200, // Ширина контейнера заголовка аккордеона
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors
                    .lightBlueColor, // Фоновый цвет контейнера заголовка
              ),
              padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title, // Вывод заголовка аккордеона
                            style: const TextStyle(
                              fontSize: 14,
                              color:
                                  AppColors.blueColor, // Цвет текста заголовка
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_down
                        : Icons
                            .keyboard_arrow_right, // Иконка для указания состояния аккордеона
                    color: AppColors.blueColor, // Цвет иконки
                  ),
                ],
              ),
            ),
          ),
        ),
        if (_isExpanded) // Если аккордеон раскрыт, отображаем его содержимое
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: widget.child, // Содержимое аккордеона
          ),
      ],
    );
  }
}

// // Пример использования:
// class MyAccordionPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Accordion Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: AccordionMiniWidget(
//           title: 'Accordion Title', // Заголовок аккордеона
//           child: const Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text('Accordion Content 1'), // Содержимое аккордеона
//               Text('Accordion Content 2'),
//               Text('Accordion Content 3'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
