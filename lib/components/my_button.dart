import 'package:flutter/material.dart';
import 'package:wallet_ui/utils/app_colors.dart';

class MyButton extends StatefulWidget {
  final String buttonText;
  final void Function()? onTap;
  final Color? buttonColor;
  final Color? textColor;
  const MyButton(
      {super.key,
      required this.buttonText,
      this.onTap,
      this.buttonColor,
      this.textColor});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    final mySize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          alignment: Alignment.center,
          width: mySize.width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(40)),
            color: widget.buttonColor ?? AppColors.black,
          ),
          child: Text(
            widget.buttonText,
            style: TextStyle(
                color: widget.textColor ?? AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
