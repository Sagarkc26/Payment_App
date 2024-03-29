import 'package:flutter/material.dart';
import 'package:payment_app/Colors/colors.dart';
import 'package:payment_app/pages/container.dart';
import 'package:payment_app/widgets/button.dart';
import 'package:payment_app/widgets/large_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButton(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 290,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImage(),
          _circleImage(),
        ],
      ),
    );
  }

  _mainBackground() {
    return Positioned(
      bottom: 10,
      left: 0,
      child: Container(
        height: 280,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/hello.png"),
          ),
        ),
      ),
    );
  }

  _curveImage() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/curve.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  _circleImage() {
    return Positioned(
      right: -8,
      bottom: -40,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet<dynamic>(
            isScrollControlled: true,
            barrierColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext bc) {
              return Container(
                height: MediaQuery.of(context).size.height - 210,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        color: Colors.grey.withOpacity(0.5),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height - 290,
                      ),
                    ),
                    Positioned(
                      right: 56,
                      child: Container(
                        width: 70,
                        height: 230,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          children: [
                            AppButton(
                              icon: Icons.cancel,
                              ontap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/circle.png"),
            ),
          ),
        ),
      ),
    );
  }

  _listBills() {
    return Positioned(
      top: 310,
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width - 30,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: Color(0xFFd8dbe0),
                offset: Offset(1, 1),
                blurRadius: 20,
                spreadRadius: 10),
          ],
        ),
        child: const ContainerLogo(),
      ),
    );
  }

  _payButton() {
    return const Positioned(
      bottom: 10,
      child: AppLargeButton(
        text: "Pay all bills",
      ),
    );
  }
}
