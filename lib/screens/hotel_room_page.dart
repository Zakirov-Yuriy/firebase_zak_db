// Импорт необходимых библиотек и пользовательского виджета
import 'package:flutter/material.dart';
import '../widgets/hotel_room_page_widgets/hotel_room_widget.dart'; // Импорт виджета комнаты отеля

// Класс для создания страницы номеров отеля
class HotelRoom extends StatelessWidget {
  const HotelRoom({Key? key}) : super(key: key); // Конструктор класса HotelRoom

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Steigenberger Makadi', // Заголовок AppBar
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
            HotelRoomWidget(), // Виджет комнаты отеля
            HotelRoomWidget(), // Виджет комнаты отеля
          ],
        ),
      ),
    );
  }
}
