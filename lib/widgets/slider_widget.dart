import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  PageController _pageController = PageController();

  int _currentPage = 0;

  // Список URL-адресов изображений
  List<String> imageUrls = [
    'https://firebasestorage.googleapis.com/v0/b/zak-db.appspot.com/o/image_20.png?alt=media&token=ebcd29ef-bbfc-464a-a15a-1366aa6cb86e',
    'https://firebasestorage.googleapis.com/v0/b/zak-db.appspot.com/o/image_21.png?alt=media&token=6395afa0-4fa3-450f-a898-49451291d7c2',
    'https://via.placeholder.com/200x200?text=Slide%203',
    'https://via.placeholder.com/200x200?text=Slide%204',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      height: 273,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: PageView.builder(
          controller: _pageController,
          itemCount: imageUrls.length,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 1, bottom: 16),
              child: Stack(
                children: [
                  // Изображение с радиусом бордера
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Контроллеры
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 75,
                      margin: EdgeInsets.only(bottom: 8.0),
                      height: 17,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          4,
                          (controllerIndex) {
                            Color? controllerColor = _currentPage ==
                                    controllerIndex
                                ? Colors.black
                                : Colors.grey[400 - (controllerIndex * 100)];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: Container(
                                width: 7,
                                height: 7,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: controllerColor,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
