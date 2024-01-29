import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class CustomRowTextWidget extends StatelessWidget {
  final List<String> firstRowTexts;
  final List<String> secondRowTexts;

  const CustomRowTextWidget({
    Key? key,
    required this.firstRowTexts,
    required this.secondRowTexts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                for (var text in firstRowTexts)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: AppColors.lightGrayColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.greyColor,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
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
                for (var text in secondRowTexts)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: AppColors.lightGrayColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.greyColor,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
