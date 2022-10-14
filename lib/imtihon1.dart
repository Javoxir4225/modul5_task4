// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_4/imtihon2.dart';
import 'package:flutter_application_4/imtihon3.dart';
import 'package:flutter_application_4/imtihon4.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Imtihon extends StatefulWidget {
  const Imtihon({super.key});

  @override
  State<Imtihon> createState() => _ImtihonState();
}

class _ImtihonState extends State<Imtihon> with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int _index = 0;
 late AnimationController _animationController;
  late Animation _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = Tween(begin: 1.5, end: 0.0).animate(_animationController)
      ..addStatusListener((status) {
        _animationStatus = status;
      })
      ..addListener(() {
        setState(() {});
      });
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateX(
            3.14 * (_animation.value),
          ),
        child: Scaffold(
          body: PageView(
            // controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _index = index;
              });
            },
            children: [
              _funk1(),
              _funk1(),
              _funk1(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            // selectedItemColor: Colors.red,
            // unselectedItemColor: Colors.red,
            fixedColor: Color.fromARGB(255, 178, 140, 255),

            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  label: "."),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.paste_sharp,
                    color: Colors.grey,
                  ),
                  label: "."),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.grey,
                  ),
                  label: "."),
              BottomNavigationBarItem(
                  icon: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Imtihon3()),
                      );
                    },
                    elevation: 10,
                    backgroundColor: Color.fromARGB(255, 178, 140, 255),
                    child: Icon(Icons.add_circle),
                  ),
                  label: ""),
            ],
            currentIndex: _index,
            onTap: (int index) {
              setState(() {
                _index = index;
                _pageController.animateToPage(index,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeIn);
              });
            },
          ),
          // floatingActionButton: SpeedDial(
          //   animatedIcon: AnimatedIcons.add_event,
          //   children: [
          //     SpeedDialChild(
          //       child: Icon(Icons.accessibility),
          //       label: "Firs",
          //     ),
          //     SpeedDialChild(
          //       child: Icon(Icons.accessibility),
          //       label: "Firs",
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }

  _funk1() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                  color: Color.fromARGB(255, 180, 144, 251),
                ),
                padding: EdgeInsets.only(left: 20, top: 35, right: 20),
                height: 320,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: const [
                              Divider(
                                thickness: 2,
                                color: Colors.white,
                                endIndent: 120,
                                height: 1,
                              ),
                              Divider(
                                thickness: 2,
                                color: Colors.white,
                                endIndent: 130,
                              ),
                              Divider(
                                height: 1,
                                thickness: 2,
                                color: Colors.white,
                                endIndent: 140,
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Image.asset(
                          "assets/images/photo1.jpg",
                          height: 50,
                          width: 50,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Let's find",
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "your top doctor!",
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          focusColor: Colors.white,
                          iconColor: Colors.white,
                          prefixIconColor: Colors.grey,
                          hintText: "Search health issue..............",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, bottom: 12),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 24),
                  _funk2("assets/images/all.png", "All"),
                  SizedBox(width: 36),
                  _funk2("assets/images/yurak.png", "Cordiology"),
                  SizedBox(width: 36),
                  _funk2("assets/images/55.png", "Medicine"),
                  SizedBox(width: 36),
                  _funk2("assets/images/00.png", "General"),
                ],
              ),
              SizedBox(height: 20),
              _card("assets/images/photo2.jpg", "Dr.Maria Waston",
                  "Heart Surgeon, London, England", true),
              _card("assets/images/photo3.jpg", "Dr.Stevi Jessi",
                  "General Dentist", false),
            ],
          )
        ],
      ),
    );
  }

  _funk2(String images, String text) {
    return Column(
      children: [
        Image.asset(
          images,
          height: 50,
          width: 50,
        ),
        SizedBox(height: 2),
        Text(
          text,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }

  _card(String images, String text1, String text2, bool set) {
    return Card(
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(16),
      elevation: 6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        height: 120,
        child: Row(
          children: [
            SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => set ? Imtihon2() : Imtihon4(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          images,
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 16,
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star_half,
                      color: Colors.green,
                      size: 24,
                    ),
                    Text("4.8"),
                  ],
                ),
              ],
            ),
            SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  text2,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => set ? Imtihon2() : Imtihon4(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    fixedSize: Size(100, 20),
                  ),
                  child: Text(
                    "Appointment",
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
