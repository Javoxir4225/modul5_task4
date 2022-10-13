import 'package:flutter/material.dart';

class UyIshi2 extends StatefulWidget {
  const UyIshi2({Key? key}) : super(key: key);

  State<UyIshi2> createState() => _UyIshi2State();
}

class _UyIshi2State extends State<UyIshi2> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween(begin: 1.5, end: 0.0).animate(_animationController)
      ..addStatusListener((status) {
        _animationStatus = status;
      })
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  bool _setLokol1 = true;
  bool _setLokol2 = true;
  bool setlokol = true;

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    return DefaultTabController(
      length: 5,
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateY(
            3.14 * (_animation.value),
          ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              "Cars",
              style: TextStyle(fontSize: 24),
            ),
            titleTextStyle: const TextStyle(color: Colors.red),
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
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.notifications,
                        color: Colors.red,
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
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.shopping_cart_sharp,
                        color: Colors.red,
                      ),
              ),
            ],
            bottom: const TabBar(
              labelColor: Colors.black,
              isScrollable: true,
              padding: EdgeInsets.only(left: 10),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
                color: Colors.red,
              ),
              tabs: [
                Tab(
                  child: Text("   All   "),
                ),
                Tab(
                  child: Text("   Red   "),
                ),
                Tab(
                  child: Text("   Blue    "),
                ),
                Tab(
                  child: Text("   Green   "),
                ),
                Tab(
                  child: Text("   Amber   "),
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
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Stack(
            children: [
              Container(
                // alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/car${index + i1}.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                height: 200,
                width: double.infinity,
                // padding: const EdgeInsets.all(12),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "PDP Car",
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Electric",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "100\$",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 60),
                    Stack(
                      children: [
                        Container(
                          // padding: EdgeInsets.only(bottom: 80,right: 80),
                          // alignment: Alignment,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 240, 124, 116),
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
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.favorite_sharp,
                                    color: Colors.red,
                                  ),
                          ),
                        ),
                      ],
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
