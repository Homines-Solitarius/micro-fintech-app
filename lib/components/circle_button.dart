import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final Color? containerColor;
  final String iconLabel;
  final void Function()? ontap;
  const CircleButton(
      {super.key,
      required this.icon,
      this.iconColor,
      this.containerColor,
      required this.iconLabel,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: ontap,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: containerColor ?? AppColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  icon,
                  size: 25,
                  color: iconColor ?? AppColors.black,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            iconLabel,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.white),
          ),
        )
      ],
    );
  }
}
