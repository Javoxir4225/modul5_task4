import 'package:flutter/material.dart';
import 'package:flutter_application_4/dont_indicator.dart';
import 'package:flutter_application_4/minyu2.dart';

class UyUshi3 extends StatefulWidget {
  const UyUshi3({super.key});

  @override
  State<UyUshi3> createState() => _UyUshi3State();
}

class _UyUshi3State extends State<UyUshi3> {

  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          
               DotIndicator(pageController: controller,setlokol: false,),
               const SizedBox(height: 20),
        ],
      ),
    );
  }

  _metod1() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      
          const SizedBox(height: 24),
          const Text(
            "Learn from experts",
            style: TextStyle(
              color: Colors.red,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
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
          Image.asset(
            "assets/images/jpeg.png",
            height: 280,
            width: 280,
          ),
        ],
      ),
    );
  }

  _metod2() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(child: SizedBox()),
          const SizedBox(height: 100),
          const Text(
            "Find video courses",
            style: TextStyle(
              color: Colors.red,
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
          Image.asset(
            "assets/images/jpeg2.png",
            height: 280,
            width: 280,
          ),
          // const SizedBox(height: 50),
          const Expanded(child: SizedBox()),
          Row(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(Minyu2(),);
                },
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 30, right: 18),
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
         
        ],
      ),
    );
  }
}
