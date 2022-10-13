import 'package:flutter/material.dart';
import 'package:flutter_application_4/imtihon1.dart';

class Imtihon3 extends StatefulWidget {
  const Imtihon3({super.key});

  @override
  State<Imtihon3> createState() => _Imtihon3State();
}

class _Imtihon3State extends State<Imtihon3>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween(begin: 1.0, end: 0.0).animate(_animationController)
      ..addStatusListener((status) {
        _animationStatus = status;
      })
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.002)
        ..rotateY(
          3.14 * (_animation.value),
        ),
      child: Scaffold(
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Imtihon(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40, left: 75),
                    child: Text(
                      "Top Doctor",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ),
              Card(
                margin: const EdgeInsets.only(right: 30, left: 30, top: 20),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                elevation: 5,
                child: _textField(),
              ),
              const SizedBox(height: 12),
              _doktory(
                  "assets/images/photo4.png",
                  "Dr.Rodger Struck",
                  "Heart Surgeon London, England",
                  "assets/images/frame3.png",
                  "assets/images/frame1.png"),
              _doktory(
                "assets/images/photo5.png",
                "Dr.Kathy Pacheco",
                "Heart Surgeon London, England",
                "assets/images/frame3.png",
                "assets/images/frame2.png",
              ),
              _doktory(
                "assets/images/photo6.png",
                "Dr.Lorri Warf",
                "General Dentist",
                "assets/images/frame3.png",
                "assets/images/frame1.png",
              ),
              _doktory(
                "assets/images/photo7.png",
                "Dr.Chris Glasser",
                "Heart Surgeon London, England",
                "assets/images/frame3.png",
                "assets/images/frame2.png",
              ),
              _doktory(
                "assets/images/photo3.jpg",
                "Dr.Kenneth Allen",
                "General Dentist",
                "assets/images/frame3.png",
                "assets/images/frame1.png",
              ),
            ],
          ),
        ),
      ),
    );
  }

  _textField() {
    return TextField(
      cursorColor: Colors.white,
      focusNode: FocusNode(
        canRequestFocus: true,
      ),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        fillColor: Colors.white,
        hintText: "Search Doctor",
        labelStyle: const TextStyle(color: Colors.grey),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  _doktory(String _images, String _text1, String _text2, String _images2,
      String _text3) {
    return Card(
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(16),
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        height: 120,
        child: Row(
          children: [
            const SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        _images,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 16,
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
            const SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _text1,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  _text2,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        fixedSize: const Size(100, 20),
                      ),
                      child: const Text(
                        "Appointment",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(width: 18),
                    Image.asset(_images2),
                    const SizedBox(width: 8),
                    Image.asset(_text3),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
