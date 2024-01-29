import 'package:firebase_zak_db/widgets/reservations_page_widgets/tourist_wudget.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

// Виджет AddTouristWidget представляет собой элемент для добавления туристов.
class AddTouristWidget extends StatefulWidget {
  final String title;
  const AddTouristWidget({Key? key, required this.title}) : super(key: key);

  @override
  _AddTouristWidgetState createState() => _AddTouristWidgetState();
}

class _AddTouristWidgetState extends State<AddTouristWidget> {
  bool _isExpanded = false;
  List<TouristtWidget> tourists = []; // Список туристов

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white, // Цвет фона контейнера
        borderRadius:
            BorderRadius.all(Radius.circular(12.0)), // Скругление углов
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded; // Изменение состояния раскрытия
                  if (_isExpanded) {
                    tourists.add(TouristtWidget(
                        title:
                            'Турист ${tourists.length + 3}')); // Добавление нового туриста при раскрытии
                  }
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
                        widget.title, // Заголовок
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: AppColors.blueColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          _isExpanded
                              ? Icons.remove
                              : Icons
                                  .add, // Иконка для показа состояния раскрытия
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (_isExpanded) // Если раскрыто, показать список туристов
            Padding(
              padding: EdgeInsets.only(right: 16, left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var tourist in tourists)
                    tourist, // Показать каждого туриста в списке
                ],
              ),
            ),
        ],
      ),
    );
  }
}
