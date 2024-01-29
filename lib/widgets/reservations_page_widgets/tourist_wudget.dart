import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class TouristtWidget extends StatefulWidget {
  final String title;
  const TouristtWidget({Key? key, required this.title}) : super(key: key);

  @override
  _TouristtWidgetState createState() => _TouristtWidgetState();
}

class _TouristtWidgetState extends State<TouristtWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: AppColors.inputArrowBgColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          _isExpanded ? Icons.expand_less : Icons.expand_more,
                          color: AppColors.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (_isExpanded)
            Padding(
              padding: EdgeInsets.only(right: 16, left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Имя',
                      hintText: 'Введите имя',
                      hintStyle: TextStyle(color: AppColors.labelStyleColor),
                      labelStyle: TextStyle(color: AppColors.labelStyleColor),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Фамилия',
                      hintText: 'Введите фамилию',
                      hintStyle: TextStyle(color: AppColors.labelStyleColor),
                      labelStyle: TextStyle(color: AppColors.labelStyleColor),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Дата рождения',
                      hintText: 'Введите дату рождения',
                      hintStyle: TextStyle(color: AppColors.labelStyleColor),
                      labelStyle: TextStyle(color: AppColors.labelStyleColor),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Гражданство',
                      hintText: 'Введите гражданство',
                      hintStyle: TextStyle(color: AppColors.labelStyleColor),
                      labelStyle: TextStyle(color: AppColors.labelStyleColor),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Номер загранпаспорта',
                      hintText: 'Введите номер загранпаспорта',
                      hintStyle: TextStyle(color: AppColors.labelStyleColor),
                      labelStyle: TextStyle(color: AppColors.labelStyleColor),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Срок действия загранпаспорта',
                      hintText: 'Введите срок действия загранпаспорта',
                      hintStyle: TextStyle(color: AppColors.labelStyleColor),
                      labelStyle: TextStyle(color: AppColors.labelStyleColor),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
