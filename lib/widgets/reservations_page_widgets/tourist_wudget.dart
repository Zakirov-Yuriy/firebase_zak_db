import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class TouristtWidget extends StatefulWidget {
  final String title; // Заголовок виджета
  const TouristtWidget({Key? key, required this.title}) : super(key: key);

  @override
  _TouristtWidgetState createState() => _TouristtWidgetState();
}

class _TouristtWidgetState extends State<TouristtWidget> {
  bool _isExpanded = false; // Флаг для определения, развернут ли виджет

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        children: [
          // Верхняя часть виджета с возможностью разворачивания/сворачивания
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isExpanded =
                      !_isExpanded; // Изменяем состояние развернутости виджета
                });
              },
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Заголовок виджета
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // Иконка для сворачивания/разворачивания виджета
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: AppColors.inputArrowBgColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          _isExpanded ? Icons.expand_less : Icons.expand_more,
                          color: AppColors.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Развернутая часть виджета с полями для ввода информации о туристе
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Поля для ввода информации о туристе
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Имя',
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
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Фамилия',
                      hintText: 'Введите фамилию',
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
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Дата рождения',
                      hintText: 'Введите дату рождения',
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
                    keyboardType: TextInputType.datetime,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Гражданство',
                      hintText: 'Введите гражданство',
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
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Номер загранпаспорта',
                      hintText: 'Введите номер загранпаспорта',
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
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Срок действия загранпаспорта',
                      hintText: 'Введите срок действия загранпаспорта',
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
                  const SizedBox(height: 16),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
