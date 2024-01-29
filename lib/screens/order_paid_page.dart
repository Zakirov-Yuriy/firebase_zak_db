import 'package:firebase_zak_db/utils/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button_widget.dart';
import 'hotel_page.dart';

class OrderPaid extends StatelessWidget {
  const OrderPaid({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Заказ оплачен',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 94,
                      height: 94,
                      decoration: BoxDecoration(
                        color: AppColors.shapeColor,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/zak-db.appspot.com/o/Party%20Popper.png?alt=media&token=8ec2a4e3-d31b-4736-a221-53cb1e1103f1',
                            width: 44,
                            height: 44,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Ваш заказ принят в работу',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProDisplay',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, right: 23),
                          child: Text(
                            'Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.greyColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFProDisplay',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 12, right: 16, bottom: 28),
              child: CustomButton(
                buttonText: 'Супер!',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HotelPage()),
                  );
                },
                nextPage: const HotelPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
