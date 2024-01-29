import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String descriptionText;

  const CustomTextFieldWidget({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    required this.descriptionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              width: 149,
              height: 29,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 2, left: 5),
                    child: Icon(
                      Icons.star,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    titleText,
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                      fontFamily: 'SFProDisplay',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              subtitleText,
              style: const TextStyle(
                fontSize: 22,
                fontFamily: 'SFProDisplay',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              descriptionText,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.blueColor,
                fontFamily: 'SFProDisplay',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
