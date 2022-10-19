import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Intro1.dart';
import 'Intro2.dart';
import 'Intro3.dart';

class IntroCard extends StatefulWidget {
  const IntroCard({
    Key? key,
  }) : super(key: key);

  @override
  _IntroCard createState() => _IntroCard();
}

class _IntroCard extends State<IntroCard> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Intro1(),
        ],
      ),
    );
  }
}
