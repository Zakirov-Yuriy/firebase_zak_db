// Импорт необходимых библиотек и пользовательских виджетов
import 'package:flutter/material.dart';
import '../utils/colors.dart'; // Импорт цветов
import '../widgets/hotel_page_widgets/accordion_widget.dart'; // Импорт виджета аккордеона
import '../widgets/custom_button_widget.dart'; // Импорт пользовательской кнопки
import '../widgets/hotel_page_widgets/custom_text_widget.dart'; // Импорт виджета текста
import '../widgets/reservations_page_widgets/custom_text_field_widget.dart'; // Импорт виджета текстового поля
import '../widgets/slider_widget.dart'; // Импорт виджета слайдера
import 'hotel_room_page.dart'; // Импорт страницы с номерами отеля

// Класс для создания страницы отеля
class HotelPage extends StatelessWidget {
  const HotelPage({Key? key}) : super(key: key); // Конструктор класса HotelPage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Отель', // Заголовок в AppBar
          style: TextStyle(
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0, // Убрать тень у AppBar
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 246, 246, 246), // Цвет фона контейнера
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white, // Цвет фона контейнера
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SliderWidget(), // Виджет слайдера
                          CustomTextFieldWidget(
                            titleText:
                                '5 Превосходно', // Текст заголовка текстового поля
                            subtitleText:
                                'Steigenberger Makadi', // Текст подзаголовка текстового поля
                            descriptionText:
                                'Madinat Makadi, Safaga Road, Makadi Bay, Египет', // Текст описания текстового поля
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'от 134 673 ₽', // Цена
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
                                    'за тур с перелётом', // Описание цены
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.greyColor, // Цвет текста
                                      fontFamily: 'SFProDisplay',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Об отеле', // Заголовок раздела
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const CustomRowTextWidget(
                        firstRowTexts: [
                          '3-я линия',
                          'Платный Wi-Fi в фойе'
                        ], // Текст первой строки
                        secondRowTexts: [
                          '30 км до аэропорта',
                          '1 км до пляжа'
                        ], // Текст второй строки
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child: Text(
                          'Отель VIP-класса с собственными гольф полями. Высокий уровень сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!', // Описание отеля
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      AccordionWidget(
                        title: 'Удобства', // Заголовок аккордеона
                        subheading:
                            'Самое необходимое', // Подзаголовок аккордеона
                        icon: const Icon(
                          Icons.sentiment_satisfied_alt,
                        ),
                        child: const Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate'), // Содержимое аккордеона
                      ),
                      AccordionWidget(
                        icon: const Icon(Icons.check_box_outlined),
                        title: 'Что включено', // Заголовок аккордеона
                        subheading:
                            'Самое необходимое', // Подзаголовок аккордеона
                        child: const Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate'), // Содержимое аккордеона
                      ),
                      AccordionWidget(
                        icon:
                            const Icon(Icons.indeterminate_check_box_outlined),
                        title: 'Что не включено', // Заголовок аккордеона
                        subheading:
                            'Самое необходимое', // Подзаголовок аккордеона
                        child: const Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate'), // Содержимое аккордеона
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, top: 12, right: 16, bottom: 28),
                      child: CustomButton(
                        buttonText: 'К выбору номера', // Текст кнопки
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HotelRoom()),
                          );
                        },
                        nextPage: const HotelRoom(), // Путь к следующему экрану
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
