import 'package:flutter/material.dart';
import '../widgets/reservations_page_widgets/reservations_page_widget.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Бронирование',
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
            ReservationPageWidget(),
          ],
        ),
      ),
    );
  }
}
