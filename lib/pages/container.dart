import 'package:flutter/material.dart';
import 'package:payment_app/Colors/colors.dart';
import 'package:payment_app/widgets/sizesbox.dart';

class ContainerLogo extends StatelessWidget {
  const ContainerLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      border: Border.all(width: 4, color: Colors.red),
                      image: const DecorationImage(
                        image: AssetImage("images/hello.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "S.K. Tech",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                        height: 10,
                      ),
                      Text(
                        "id:978sy15",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedText(
                  text: ("Auto pay on 21th july 2024"), color: AppColor.green),
              const SizedBox(
                height: 5,
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      color: AppColor.selectBackground,
                    ),
                    child: Center(
                      child: Text(
                        "select",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColor.selectColor),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "\$2014.05",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.selectColor),
                  ),
                  Text(
                    "Due in 3 days",
                    style: TextStyle(fontSize: 13, color: AppColor.halfOval),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 35,
                width: 5,
                decoration: BoxDecoration(
                  color: AppColor.halfOval,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
