// Импорт необходимых библиотек и файлов
import 'package:firebase_zak_db/utils/colors.dart'; // Импорт цветов
import 'package:flutter/material.dart';
import '../widgets/custom_button_widget.dart'; // Импорт пользовательской кнопки
import 'hotel_page.dart'; // Импорт страницы отеля

// Класс для экрана подтверждения оплаты заказа
class OrderPaid extends StatelessWidget {
  const OrderPaid({Key? key}); // Конструктор класса OrderPaid

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Заказ оплачен', // Заголовок AppBar
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
                    // Блок с изображением иконки (форма контейнера, изображение и текст)
                    Container(
                      width: 94,
                      height: 94,
                      decoration: BoxDecoration(
                        color: AppColors.shapeColor, // Цвет формы контейнера
                        borderRadius: BorderRadius.circular(
                            1000), // Круглая форма контейнера
                      ),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/zak-db.appspot.com/o/Party%20Popper.png?alt=media&token=8ec2a4e3-d31b-4736-a221-53cb1e1103f1', // Ссылка на изображение
                            width: 44,
                            height: 44,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    // Блок с текстовым сообщением о принятии заказа в работу
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Ваш заказ принят в работу', // Текст
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SFProDisplay',
                            ),
                          ),
                        ),
                        // Текстовое сообщение о времени подтверждения заказа и уведомлении
                        Padding(
                          padding: EdgeInsets.only(left: 23, right: 23),
                          child: Text(
                            'Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.', // Текст
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.greyColor, // Цвет текста
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFProDisplay',
                            ),
                            textAlign: TextAlign
                                .center, // Выравнивание текста по центру
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Кнопка "Супер!" для перехода на страницу отеля
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white, // Цвет контейнера
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 12, right: 16, bottom: 28),
              child: CustomButton(
                buttonText: 'Супер!', // Текст кнопки
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HotelPage()),
                  );
                },
                nextPage:
                    const HotelPage(), // Следующая страница после нажатия кнопки
              ),
            ),
          ),
        ],
      ),
    );
  }
}
