import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/accordion_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/slider_widget.dart';
import 'hotel_room_page.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Отель',
          style: TextStyle(
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 246, 246, 246),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SliderWidget(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Container(
                              width: 149,
                              height: 29,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 2, left: 5),
                                    child: Icon(
                                      Icons.star,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  Text(
                                    '5 Превосходно',
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontFamily: 'SFProDisplay',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text(
                              'Steigenberger Makadi',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Text(
                              'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.blueColor,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'от 134 673 ₽',
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
                                    'за тур с перелётом',
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
                          'Об отеле',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: AppColors.lightGrayColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Text(
                                        '3-я линия',
                                        style: TextStyle(
                                          // backgroundColor: AppColors.lightGrayColor,
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
                                      'Платный Wi-Fi в фойе',
                                      style: TextStyle(
                                        // backgroundColor: AppColors.lightGrayColor,
                                        fontSize: 16,
                                        color: AppColors.greyColor,
                                        fontFamily: 'SFProDisplay',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: AppColors.lightGrayColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Text(
                                        '30 км до аэропорта',
                                        style: TextStyle(
                                          // backgroundColor: AppColors.lightGrayColor,
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
                                      '1 км до пляжа',
                                      style: TextStyle(
                                        // backgroundColor: AppColors.lightGrayColor,
                                        fontSize: 16,
                                        color: AppColors.greyColor,
                                        fontFamily: 'SFProDisplay',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child: Text(
                          'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      AccordionWidget(
                        title: 'Удобства',
                        subheading: 'Самое необходимое',
                        icon: const Icon(
                          Icons.sentiment_satisfied_alt,
                        ),
                        child: const Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate'),
                      ),
                      AccordionWidget(
                        icon: const Icon(Icons.check_box_outlined),
                        title: 'Что включено',
                        subheading: 'Самое необходимое',
                        child: const Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate'),
                      ),
                      AccordionWidget(
                        icon:
                            const Icon(Icons.indeterminate_check_box_outlined),
                        title: 'Что не включено',
                        subheading: 'Самое необходимое',
                        child: const Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Container(
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
                        buttonText: 'К выбору номера',
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
