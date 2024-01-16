import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:vendorgrocery/constants.dart';

class OnBoardScreen extends StatefulWidget {
  OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final _controller = PageController(
    initialPage: 0,
  );
  int _currpage = 0;
  List<Widget> _pages = [
    Column(
      children: [
        Expanded(child: Image.asset('assets/images/delivery.jpg')),
        Text(
          "Set Your Delivery Location",
          style: kPageViewTextStyle,
          textAlign: TextAlign.center,
        )
      ],
    ),
    Column(
      children: [
        Expanded(child: Image.asset('assets/images/onlineshop.jpg')),
        Text(
          "Order Online from Your favourite Store",
          style: kPageViewTextStyle,
          textAlign: TextAlign.center,
        )
      ],
    ),
    Column(
      children: [
        Expanded(
            child: Image.asset(
          'assets/images/fast.jpg',
          height: 300,
        )),
        Text(
          "Quick delivery to Your Door Step",
          style: kPageViewTextStyle,
          textAlign: TextAlign.center,
        )
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            children: _pages,
            onPageChanged: (index) {
              setState(() {
                _currpage = index;
              });
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(
          dotsCount: _pages.length,
          position: _currpage,
          decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              activeColor: Colors.deepOrangeAccent),
        ),
      ],
    );
  }
}
