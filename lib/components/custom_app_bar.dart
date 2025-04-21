import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData? actionIcon;
  const CustomAppBar({super.key, required this.title, this.actionIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.black),
          ),
          IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Icon(
                  actionIcon,
                  size: 22,
                ),
              ))
        ],
      ),
    );
  }
}
