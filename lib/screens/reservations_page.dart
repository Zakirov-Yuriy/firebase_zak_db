// Импорт необходимых библиотек и пользовательского виджета
import 'package:flutter/material.dart';
import '../widgets/reservations_page_widgets/reservations_page_widget.dart'; // Импорт пользовательского виджета для страницы бронирования

// Класс для создания страницы бронирования
class ReservationPage extends StatelessWidget {
  const ReservationPage({Key? key})
      : super(key: key); // Конструктор класса ReservationPage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Бронирование', // Заголовок AppBar
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ReservationPageWidget(), // Виджет для отображения содержимого страницы бронирования
          ],
        ),
      ),
    );
  }
}
