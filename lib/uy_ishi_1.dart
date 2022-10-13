import 'package:flutter/material.dart';

class UyIshi1 extends StatefulWidget {
  const UyIshi1({Key? key}) : super(key: key);

  @override
  State<UyIshi1> createState() => _UyIshi1State();
}

class _UyIshi1State extends State<UyIshi1> {
  bool setlokol = true;
  bool _setLokol1 = true;
  bool _setLokol2 = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            " Cars",
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _setLokol1 = !_setLokol1;
                  });
                },
                icon: _setLokol1
                    ? const Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _setLokol2 = !_setLokol2;
                  });
                },
                icon: _setLokol2
                    ? const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.shopping_cart_sharp,
                        color: Colors.black,
                      ),
              ),
            ],
          bottom: const TabBar(
            labelColor: Colors.black,
            isScrollable: true,
            padding: EdgeInsets.only(left: 20, right: 20),
            // indicatorWeight: 4,
            // indicatorColor: Color.fromARGB(255, 238,238,238),
            unselectedLabelColor: Colors.grey,
            indicator: BoxDecoration(
              color: Color.fromARGB(255, 206, 206, 206),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            tabs: [
              Tab(
                text: "    All    ",
              ),
              // SizedBox(width: 30,),
              Tab(
                text: "    Red     ",
              ),
              Tab(
                text: "    Blue     ",
              ),
              Tab(
                text: "    Green    ",
              ),
              Tab(
                text: "    Amber    ",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: _funkAll(24, 0),
            ),
            Container(
              child: _funkAll(6, 0),
            ),
            Container(
              child: _funkAll(6, 6),
            ),
            Container(
              child: _funkAll(6, 12),
            ),
            Container(
              child: _funkAll(6, 18),
            ),
          ],
        ),
      ),
    );
  }

  _funkAll(int i, int i1) {
    return ListView(
      children: List.generate(
        i,
        (index) => Card(
          margin:
              const EdgeInsets.only(right: 24, left: 24, bottom: 16, top: 12),
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/car${index + (i1)}.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                child: Container(
                  // padding: EdgeInsets.only(bottom: 80,right: 80),
                  // alignment: Alignment,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: 36,
                  width: 38,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        setlokol = !setlokol;
                      });
                    },
                    icon: setlokol
                        ? const Icon(
                            Icons.favorite_outline_sharp,
                          )
                        : const Icon(
                            Icons.favorite_sharp,
                            color: Colors.red,
                          ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "PDP Car",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Electric",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 75),
                    Text(
                      "100\$",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
