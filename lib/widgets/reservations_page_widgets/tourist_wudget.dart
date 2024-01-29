import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class TouristtWidget extends StatefulWidget {
  final String title; // Заголовок виджета
  const TouristtWidget({Key? key, required this.title}) : super(key: key);

  @override
  _TouristtWidgetState createState() => _TouristtWidgetState();
}

class _TouristtWidgetState extends State<TouristtWidget> {
  bool _isExpanded = false; // Флаг для определения раскрытия виджета

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isExpanded =
                      !_isExpanded; // Изменяем состояние флага при нажатии
                });
              },
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title, // Отображаем заголовок виджета
                        style: const TextStyle(
                          fontSize: 22,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: AppColors.inputArrowBgColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          _isExpanded
                              ? Icons.expand_less
                              : Icons
                                  .expand_more, // Иконка для сворачивания/раскрытия виджета
                          color: AppColors.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (_isExpanded) // Если виджет раскрыт, отображаем дополнительные поля
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Имя', // Поле ввода для имени туриста
                      hintText: 'Введите имя',
                      hintStyle:
                          const TextStyle(color: AppColors.labelStyleColor),
                      labelStyle:
                          const TextStyle(color: AppColors.labelStyleColor),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16), // Промежуток между полями
                  // Аналогично остальные поля для ввода информации о туристе
                ],
              ),
            ),
        ],
      ),
    );
  }
}
