import 'package:flutter/material.dart';
import 'package:payment_app/pages/my_home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Payment App",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
    );
  }
}
