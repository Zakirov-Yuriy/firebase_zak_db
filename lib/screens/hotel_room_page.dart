import 'package:flutter/material.dart';
import '../widgets/hotel_room_page_widgets/hotel_room_widget.dart';

class HotelRoom extends StatelessWidget {
  const HotelRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Steigenberger Makadi',
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
            HotelRoomWidget(),
            HotelRoomWidget(),
          ],
        ),
      ),
    );
  }
}
