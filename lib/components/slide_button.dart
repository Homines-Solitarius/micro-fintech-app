import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class SlideButton extends StatelessWidget {
  final String text;
  final void Function()? ontap;
  final Color? buttonColor;
  final Color? textColor;
  const SlideButton(
      {super.key,
      required this.text,
      this.ontap,
      this.buttonColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: buttonColor ?? AppColors.accentPurple),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textColor ?? AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
