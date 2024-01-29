import 'package:flutter/material.dart';
import '../../screens/order_paid_page.dart';
import '../../utils/colors.dart';
import 'add_tourist_widget.dart';
import '../custom_button_widget.dart';
import 'flight_info_widget.dart';
import 'tour_row_widget.dart';
import 'tourist_wudget.dart';
import 'custom_text_field_widget.dart';
import 'custom_textfield_container_widgets.dart';

class ReservationPageWidget extends StatelessWidget {
  const ReservationPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 246, 246, 246),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: CustomTextFieldWidget(
                    titleText: '5 Превосходно',
                    subtitleText: 'Steigenberger Makadi',
                    descriptionText:
                        'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: const Column(
                      children: [
                        FlightInfoWidget(
                          departureTitle: 'Вылет из',
                          departureValue: 'Санкт-Петербург',
                        ),
                        FlightInfoWidget(
                          departureTitle: 'Страна, город',
                          departureValue: 'Египет, Хургада',
                        ),
                        FlightInfoWidget(
                          departureTitle: 'Даты',
                          departureValue: '19.09.2023 – 27.09.2023',
                        ),
                        FlightInfoWidget(
                          departureTitle: 'Кол-во ночей',
                          departureValue: '7 ночей',
                        ),
                        FlightInfoWidget(
                          departureTitle: 'Отель',
                          departureValue: 'Steigenberger Makadi',
                        ),
                        FlightInfoWidget(
                          departureTitle: 'Номер',
                          departureValue:
                              'Стандартный с видом на бассейн или сад',
                        ),
                        FlightInfoWidget(
                          departureTitle: 'Питание',
                          departureValue: 'Все включено',
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //  Информация о покупателе
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 16, left: 16, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Информация о покупателе',
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomTextFieldContainer(
                            labelText1: 'Телефон',
                            hintText1: 'Введите номер телефона',
                            labelText2: 'Электронная почта',
                            hintText2: 'Введите адрес электронной почты',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w400,
                                color: AppColors.greyColor),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //  Информация о покупателе
            //Акардион  с инпутами

            const TouristtWidget(title: 'Первый турист'),
            const SizedBox(height: 8),
            const TouristtWidget(title: 'Второй турист'),
            const SizedBox(height: 8),
            const AddTouristWidget(title: 'Добавить туриста'),
            const SizedBox(height: 8),

            //Акардион  с инпутами

            //  Информация о цене
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 16, left: 16, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              TourRowWidget(
                                textColor: Colors.black,
                                tourTitle: 'Тур',
                                tourPrice: '186 600 ₽',
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(height: 16),
                              TourRowWidget(
                                textColor: Colors.black,
                                tourTitle: 'Топливный сбор',
                                tourPrice: '9 300 ₽',
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(height: 16),
                              TourRowWidget(
                                tourTitle: 'Сервисный сбор',
                                tourPrice: '2 136 ₽',
                                textColor: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(height: 16),
                              TourRowWidget(
                                tourTitle: 'К оплате',
                                tourPrice: '198 036 ₽',
                                textColor: Color.fromRGBO(13, 114, 255, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
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
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 12, right: 16, bottom: 28),
                    child: CustomButton(
                      buttonText: 'Оплатить 198 036 ₽',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderPaid()),
                        );
                      },
                      nextPage: const OrderPaid(), // Путь к следующему экрану
                    ),
                  ),
                ),
              ],
            ),
            //  Информация о цене
          ],
        ),
      ),
    );
  }
}
