import 'package:flutter/material.dart';
import 'package:flutter_application_4/dont_indicator.dart';
import 'package:flutter_application_4/minyu2.dart';

class UyUshi4 extends StatefulWidget {
  const UyUshi4({super.key});

  @override
  State<UyUshi4> createState() => _UyUshi4State();
}

class _UyUshi4State extends State<UyUshi4> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                _metod1(),
                _metod2(),
              ],
            ),
          ),
          DotIndicator(pageController: controller,setlokol: true,),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  _metod1() {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(
                    const Minyu2(),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 50, right: 18),
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Image.asset(
            "assets/images/jpeg6.png",
            height: 280,
            width: 280,
          ),
          const Text(
            "Learn from experts",
            style: TextStyle(
              color: Colors.green,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              "Select from top instructors",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          const Center(
            child: Text(
              "around the world",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }

  _metod2() {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(child: SizedBox()),
          const SizedBox(height: 100),
          Image.asset(
            "assets/images/jpeg4.png",
            height: 280,
            width: 280,
          ),
          const SizedBox(height: 16),
          const Text(
            "Find video courses",
            style: TextStyle(
              color: Colors.green,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Center(
            child: Text(
              "Build your library for your career",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          const Center(
            child: Text(
              "and personal growth",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          // const SizedBox(height: 50),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
