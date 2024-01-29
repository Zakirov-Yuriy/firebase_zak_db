import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class CustomTextFieldContainer extends StatelessWidget {
  final String labelText1;
  final String hintText1;
  final String labelText2;
  final String hintText2;

  const CustomTextFieldContainer({
    Key? key,
    required this.labelText1,
    required this.hintText1,
    required this.labelText2,
    required this.hintText2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 52,
          child: TextField(
            decoration: InputDecoration(
              labelText: labelText1,
              hintText: hintText1,
              hintStyle: const TextStyle(color: AppColors.labelStyleColor),
              labelStyle: const TextStyle(color: AppColors.labelStyleColor),
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 52,
          child: TextField(
            decoration: InputDecoration(
              labelText: labelText2,
              hintText: hintText2,
              hintStyle: const TextStyle(color: AppColors.labelStyleColor),
              labelStyle: const TextStyle(color: AppColors.labelStyleColor),
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
