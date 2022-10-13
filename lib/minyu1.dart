import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/minyu2.dart';

class Minyu1 extends StatefulWidget {
  const Minyu1({super.key});

  @override
  State<Minyu1> createState() => _Minyu1State();
}

class _Minyu1State extends State<Minyu1> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceOut,
    );
    _animationController.forward();
    super.initState();

    Timer(const Duration(milliseconds: 3000), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Minyu2(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeTransition(
        opacity: _animation,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "WELKOME",
                style: TextStyle(
                  fontFamily: "Peralta",
                  fontSize: 36,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "HOME",
                style: TextStyle(
                  fontFamily: "Peralta",
                  fontSize: 36,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "WORK",
                style: TextStyle(
                  fontFamily: "Peralta",
                  fontSize: 36,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
