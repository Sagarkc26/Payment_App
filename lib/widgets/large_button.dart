import 'package:flutter/material.dart';
import 'package:payment_app/Colors/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  const AppLargeButton({
    Key? key,
    this.backgroundColor,
    this.textColor,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        height: 60,
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.mainColor,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
