import 'package:flutter/material.dart';
import 'package:firebase_zak_db/utils/colors.dart';

// Виджет FlightInfoWidget используется для отображения информации о рейсе.
class FlightInfoWidget extends StatefulWidget {
  final String departureTitle; // Заголовок информации о вылете
  final String departureValue; // Значение информации о вылете

  const FlightInfoWidget({
    required this.departureTitle,
    required this.departureValue,
    Key? key,
  }) : super(key: key);

  @override
  _FlightInfoWidgetState createState() => _FlightInfoWidgetState();
}

class _FlightInfoWidgetState extends State<FlightInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline
                .alphabetic, // Устанавливаем базовую линию по алфавиту
            children: [
              Container(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.departureTitle, // Заголовок информации о вылете
                      style: const TextStyle(
                        color: AppColors.greyColor,
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      softWrap: true,
                    ),
                  ],
                ),
              ),
              // Небольшой отступ между колонками
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Выравнивание по левому краю
                    children: [
                      Text(
                        widget.departureValue, // Значение информации о вылете
                        style: const TextStyle(
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
