import 'package:flutter/material.dart';

class MyTransparentButton extends StatelessWidget {
  final Color color;
  final String text;
  final void Function()? ontap;
  const MyTransparentButton(
      {super.key, required this.color, required this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(
              color: color,
              width: 2,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: color),
          ),
        ),
      ),
    );
  }
}
