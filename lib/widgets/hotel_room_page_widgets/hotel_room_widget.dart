import 'package:flutter/material.dart';
import '../../screens/reservations_page.dart';
import '../../utils/colors.dart';
import 'accordion_mini_widget.dart'; // Импорт виджета AccordionMiniWidget для использования в этом файле
import '../custom_button_widget.dart';
import '../slider_widget.dart';

// Виджет HotelRoomWidget представляет собой элемент для отображения информации о номере отеля.
class HotelRoomWidget extends StatelessWidget {
  const HotelRoomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 246, 246, 246), // Цвет фона контейнера
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white, // Цвет фона контейнера
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SliderWidget(), // Виджет слайдера
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Стандартный с видом на бассейн или сад', // Заголовок описания номера
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  color: AppColors.lightGrayColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                'Все включено',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.greyColor,
                                  fontFamily: 'SFProDisplay',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: AppColors.lightGrayColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Text(
                              'Кондиционер',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.greyColor,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      AccordionMiniWidget(
                        // Виджет аккордеона с дополнительной информацией о номере
                        title: 'Подробнее о номере',
                        child: const Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Text(
                                '186 600 ₽', // Цена за номер
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'SFProDisplay',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                'за 7 ночей с перелётом', // Описание цены
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.greyColor,
                                  fontFamily: 'SFProDisplay',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 24),
                        child: CustomButton(
                          buttonText: 'Выбрать номер', // Текст кнопки
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ReservationPage()), // Переход на страницу бронирования
                            );
                          },
                          nextPage:
                              const ReservationPage(), // Путь к следующему экрану
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
