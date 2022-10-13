import 'package:flutter/material.dart';
// import 'package:flutter_application_4/imtihon1.dart';
import 'package:flutter_application_4/minyu1.dart';
// import 'package:flutter_application_4/minyu1.dart';
// import 'package:flutter_application_4/uy_ishi_1.dart';
// import 'package:flutter_application_4/uy_ishi_1.dart';
// import 'package:flutter_application_4/uy_ishi_2.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Minyu1(),
    );
  }
}