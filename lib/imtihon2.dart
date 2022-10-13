import 'package:flutter/material.dart';

import 'imtihon1.dart';

class Imtihon2 extends StatefulWidget {
  const Imtihon2({super.key});

  @override
  State<Imtihon2> createState() => _Imtihon2State();
}

class _Imtihon2State extends State<Imtihon2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const SizedBox(height: 12),
          Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade400,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/photo2.jpg"),
                    )),
                child: const Icon(
                  Icons.circle,
                  size: 16,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Dr. Maria Waston",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/yurak.png",
                    height: 15,
                    width: 15,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Cardio Speciolist",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 178, 140, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "350+",
                            style: TextStyle(
                              color: Color.fromARGB(255, 178, 140, 255),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Patients",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "15+",
                            style: TextStyle(
                              color: Color.fromARGB(255, 157, 234, 1925),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Exp. years",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "284+",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 154, 154),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Reviews",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "About Doctor",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(height: 8),
                Text(
                  "Dr. Maria Waston is the top most Cardiologist spaecialist in Nanyanyang Hospotalat London. She is available for private consultation",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 24, right: 20),
            child: Row(
              children: [
                const Text(
                  "Schedules",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "Augest >",
                  style: TextStyle(color: Colors.grey.shade800),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _kalendar("7", "Sun", true),
              _kalendar("8", "Mon", true),
              _kalendar("9", "Tue", false),
              _kalendar("10", "Wed", true),
              _kalendar("11", "Thu", true),
            ],
          ),
          // const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(top: 14, left: 24, right: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Visit Hour",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 8),
                  _visitHour("11:00 AM", true, true),
                  _visitHour("12:00 AM", false, true),
                  _visitHour("01:00 AM", true, false),
                  _visitHour("02:00 AM", true, true),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 8),
                  _visitHour("03:00 AM", true, false),
                  _visitHour("04:00 AM", true, true),
                  _visitHour("05:00 AM", true, false),
                  _visitHour("06:00 AM", true, false),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 201, 177, 250),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: const Size(330, 58),
              ),
              onPressed: () {},
              child: const Text(
                "Book Appointment",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }

  _kalendar(String st1, String st2, bool set) {
    return set
        ? TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
            ),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade100,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    st1,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    st2,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          )
        : TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
            ),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromARGB(255, 201, 177, 250),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    st1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    st2,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          );
  }

  _visitHour(String soat, bool lokol, bool lokol1) {
    return lokol
        ? TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              height: 36,
              width: 76,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade100,
              ),
              child: lokol1
                  ? Text(
                      soat,
                      style: const TextStyle(
                        color: Colors.grey,
                        // fontSize: 16,
                      ),
                    )
                  : Text(
                      soat,
                      style: const TextStyle(
                        color: Colors.black,
                        // fontSize: 16,
                      ),
                    ),
            ),
          )
        : TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              height: 36,
              width: 76,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromARGB(255, 201, 177, 250),
              ),
              child: Text(
                soat,
                style: const TextStyle(
                  color: Colors.white,
                  // fontSize: 16,
                ),
              ),
            ),
          );
          
  }
}
