import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double? fontsize;
  final Color? backgroundcolor;
  final Function()? ontap;
  final String? text;
  final IconData icon;
  final Color? iconcolor;

  const AppButton(
      {Key? key,
      this.fontsize,
      this.backgroundcolor,
      this.ontap,
      this.text,
      this.iconcolor,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Icon(
              icon,
              size: 30,
              color: iconcolor,
            ),
          ),
          text != null
              ? Text(
                  text!,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                )
              : Container()
        ],
      ),
    );
  }
}
