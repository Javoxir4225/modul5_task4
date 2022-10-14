import 'package:flutter/material.dart';

class DotIndicator extends AnimatedWidget {
  final PageController pageController;
  
  final bool setlokol;

  const DotIndicator({super.key, required this.pageController,required this.setlokol})
      : super(listenable: pageController);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(2, (index) => _buildDot(index)),
    );
  }

  _buildDot(int index) {
    double opacity = 1.0 -
        (0.8 *
            ((pageController.page ?? pageController.initialPage) - index)
                .abs());
    if (opacity < 0.2) opacity = 0.2;
    return setlokol
    ?Container(
      width: 24,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.green.withOpacity(opacity),
      ),
    )
    :Container(
      width: 24,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.red.withOpacity(opacity),
      ),
    );
  }
}
