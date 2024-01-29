import 'package:flutter/material.dart';
import 'package:firebase_zak_db/utils/colors.dart';

// Класс AccordionWidget представляет собой виджет аккордеона, который может быть
// расширен или свернут при нажатии на заголовок.
class AccordionWidget extends StatefulWidget {
  final String title; // Заголовок аккордеона
  final String subheading; // Подзаголовок аккордеона
  final Widget child; // Содержимое аккордеона
  final Widget icon; // Иконка, отображаемая рядом с заголовком

  AccordionWidget({
    required this.title,
    required this.child,
    required this.subheading,
    required this.icon,
  });

  @override
  _AccordionWidgetState createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  bool _isExpanded = false; // Флаг для отслеживания расширения аккордеона

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded; // Переключение состояния расширения
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.lightGrayColor, // Цвет фона заголовка
              ),
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  widget.icon, // Иконка рядом с заголовком
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title, // Заголовок аккордеона
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            widget.subheading, // Подзаголовок аккордеона
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Divider() // Разделитель под заголовком и подзаголовком
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_down
                        : Icons
                            .keyboard_arrow_right, // Иконка, указывающая состояние расширения
                  ),
                ],
              ),
            ),
          ),
        ),
        if (_isExpanded)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: widget.child, // Содержимое аккордеона
          ),
      ],
    );
  }
}
